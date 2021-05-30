const db = require('../db');
const fs = require('fs');

const getData = () =>{
    
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
        ORDER BY Staff_ID) AS lastPer
        ON lastPos.Staff_ID = lastPer.Staff_ID) JOIN department d
        ON lastPos.Department_ID = d.Department_ID
    GROUP BY d.Department_ID;`

    db.query(query, function(error, result) {
		if (error) {
	    	return console.error(error.message);
	  	}
	  	console.log(result);
	  	
	  	labels = [];
	  	amount = [];

	  	for (i=0; i<result.length; i++){
			labels.push(result[i].name);
			amount.push(result[i].count);
		}

		console.log(labels);
		console.log(amount);

		data = {
			labels: labels.reverse(),
			amount: amount.reverse()
		}

		ex_data = JSON.stringify(data);
		fs.writeFileSync('staff_performance.json', ex_data);

		labels = [];
		amount = [];
	});
}

module.exports = {
	getData
};


