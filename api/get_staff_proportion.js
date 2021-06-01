const express = require('express');
const router = express.Router();

const db = require('../dbp');

router.get('/', async function(req, res) {
	const query = `SELECT d.Department_ID, d.Department_Name AS name, COUNT(Staff_ID) AS count
				    FROM Promote_History p, department d
				    WHERE	(Staff_ID, Promote_Date) IN
				        (SELECT Staff_ID, MAX(Promote_Date)
				        FROM Promote_History
				        GROUP BY Staff_ID) AND p.Department_ID = d.Department_ID
				    GROUP BY Department_ID;`;
	let result = await db(query);

	labels = [];
	amount = [];

	for (i=0; i<result.length; i++){
		labels.push(result[i].name);
		amount.push(result[i].count);
	}

	data = {
		labels: labels,
		amount: amount
	}
	
	res.send(data);
})

module.exports = router;