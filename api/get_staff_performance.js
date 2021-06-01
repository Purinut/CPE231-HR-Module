const express = require('express');
const router = express.Router();

const db = require('../dbp');

router.get('/', async function(req, res) {
	const query = `SELECT lastPos.Department_ID AS ID, d.Department_Name AS Name, AVG(lastPer.Perform_Score) AS Score
					FROM ((SELECT Staff_ID, Department_ID, Position_ID
						FROM Promote_History
						WHERE	(Staff_ID, Promote_Date) IN
							(SELECT Staff_ID, MAX(Promote_Date)
							FROM Promote_History
							GROUP BY Staff_ID)) AS lastPos JOIN
						(SELECT Staff_ID, Perform_Score
						FROM staff_work_performance
						WHERE	(Staff_ID, Perform_Date) IN
							(SELECT Staff_ID, MAX(Perform_Date)
							FROM staff_work_performance
							GROUP BY Staff_ID)	
						) AS lastPer
						ON lastPos.Staff_ID = lastPer.Staff_ID) JOIN department d
						ON lastPos.Department_ID = d.Department_ID
					GROUP BY d.Department_ID
					ORDER BY Score DESC;`;
	let result = await db(query);

	department = [];
	score = [];
	date = result[0].Perform_Date;

	for (i=0; i<result.length; i++){
		department.push(result[i].Name);
		score.push(result[i].Score);
	}

	data = {
		department: department,
		score: score
	}
	
	res.send(data);
})

module.exports = router;