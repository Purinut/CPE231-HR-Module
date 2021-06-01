const express = require('express');
const router = express.Router();

const db = require('../dbp');

router.get('/', async function(req, res) {
	const query = `SELECT DATE_FORMAT(Petition_Date, '%m-%Y') AS DATE, COUNT(*) AS n
					FROM petition
					GROUP BY YEAR(Petition_Date), MONTH(Petition_Date)
					ORDER BY YEAR(Petition_Date), MONTH(Petition_Date) DESC
					LIMIT 5;`;
	let result = await db(query);

	labels = [];
  	amount = [];

	for (i=0; i<result.length; i++){
		labels.push(result[i].DATE);
		amount.push(result[i].n);
	}

	data = {
		labels: labels.reverse(),
		amount: amount.reverse()
	}
	res.send(data);
})

module.exports = router;