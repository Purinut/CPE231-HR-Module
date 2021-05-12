const db = require('../db');
const fs = require('fs');

const getData = () =>{

	const query = `SELECT DATE_FORMAT(Petition_Date, '%m-%Y') AS DATE, COUNT(*) AS n
	FROM petition
	GROUP BY YEAR(Petition_Date), MONTH(Petition_Date)
	ORDER BY YEAR(Petition_Date), MONTH(Petition_Date) DESC
	LIMIT 5;`

	db.query(query, function(error, result) {
		if (error) {
	    	return console.error(error.message);
	  	}
	  	console.log(result);
	  	
	  	labels = [];
	  	amount = [];

	  	for (i=0; i<result.length; i++){
			labels.push(result[i].DATE);
			amount.push(result[i].n);
		}

		console.log(labels);
		console.log(amount);

		data = {
			labels: labels.reverse(),
			amount: amount.reverse()
		}

		ex_data = JSON.stringify(data);
		fs.writeFileSync('petition.json', ex_data);

		labels = [];
		amount = [];
	});

};

module.exports = {
	getData
};