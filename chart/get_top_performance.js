const db = require('../db');
const fs = require('fs');

const getData = () =>{

	const query = `SELECT swp.Staff_ID, lastS.Staff_FirstName, lastS.Staff_LastName, lastS.Department_Name, lastS.Position_Name, swp.Perform_Score FROM staff_work_performance swp
					LEFT JOIN
					(SELECT t.Staff_ID, t.Staff_FirstName, t.Staff_LastName, d.Department_Name, t.Position_Name
					FROM Department d
						RIGHT JOIN
							(SELECT lastP.Staff_ID, lastP.Staff_FirstName, lastP.Staff_LastName, po.Department_ID, po.Position_ID, po.Position_Name
							FROM Position po 
								RIGHT JOIN
									(SELECT s.Staff_ID, s.Staff_FirstName, s.Staff_LastName, p.Department_ID, p.Position_ID
									FROM Staff_Info AS s
										RIGHT JOIN
											(SELECT Staff_ID, Department_ID, Position_ID
											FROM Promote_History
											WHERE	(Staff_ID, Promote_Date) IN
												(SELECT Staff_ID, MAX(Promote_Date)
												FROM Promote_History
												GROUP BY Staff_ID)) AS p
										ON s.Staff_ID = p.Staff_ID) AS lastP
								ON po.Department_ID = lastP.Department_ID
									AND po.Position_ID = lastP.Position_ID) AS t
						ON d.Department_ID = t.Department_ID) AS lastS
					ON swp.Staff_ID = lastS.Staff_ID
					WHERE Perform_Date = (SELECT MAX(Perform_Date) FROM staff_work_performance)
					ORDER BY swp.Perform_Score Desc
					LIMIT 9;`

	db.query(query, function(error, result) {
		if (error) {
	    	return console.error(error.message);
	  	}
	  	console.log(result);
	  	
	  	id = [];
	  	name = [];
	  	dep = [];
	  	pos = [];
	  	score = [];

	  	for(i=0; i<result.length; i++) {
	  		id.push(result[i].Staff_ID)
	  		name.push(result[i].Staff_FirstName + ' ' + result[i].Staff_LastName);
	  		dep.push(result[i].Department_Name);
	  		pos.push(result[i].Position_Name);
	  		score.push(result[i].Perform_Score);
	  	}

	 //  	console.log(id);
		// console.log(name);
		// console.log(score);

		data = {
			id: id,
			name: name,
			dep: dep,
			pos: pos,
			score: score
		}

		ex_data = JSON.stringify(data);
		fs.writeFileSync('top_performance.json', ex_data);

	});

};

module.exports = {
	getData
};