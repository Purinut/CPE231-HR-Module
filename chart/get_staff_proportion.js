const db = require('../db');
const fs = require('fs');

const getData = () =>{
    
    const query = `SELECT d.Department_ID, d.Department_Name AS name, COUNT(Staff_ID) AS count
    FROM Promote_History p, department d
    WHERE	(Staff_ID, Promote_Date) IN
        (SELECT Staff_ID, MAX(Promote_Date)
        FROM Promote_History
        GROUP BY Staff_ID) AND p.Department_ID = d.Department_ID
    GROUP BY Department_ID;`

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
		fs.writeFileSync('staff_proportion.json', ex_data);

		labels = [];
		amount = [];
	});
}

module.exports = {
	getData
};


