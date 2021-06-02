const express = require('express');
const router = express.Router();

const db = require('../dbp');

router.get('/', async function(req, res) {
	const query = `SELECT pd.DATE, IFNULL(dd.n, 0) AS n FROM
					(SELECT DATE_FORMAT(CURRENT_DATE(), '%m-%Y') AS DATE
					UNION SELECT DATE_FORMAT(DATE_SUB(CURRENT_DATE(), INTERVAL 1 MONTH), '%m-%Y') AS DATE
					UNION SELECT DATE_FORMAT(DATE_SUB(CURRENT_DATE(), INTERVAL 2 MONTH), '%m-%Y') AS DATE
					UNION SELECT DATE_FORMAT(DATE_SUB(CURRENT_DATE(), INTERVAL 3 MONTH), '%m-%Y') AS DATE
					UNION SELECT DATE_FORMAT(DATE_SUB(CURRENT_DATE(), INTERVAL 4 MONTH), '%m-%Y') AS DATE) pd
					LEFT JOIN
					(SELECT DATE_FORMAT(Petition_Date, '%m-%Y') AS DATE, COUNT(*) AS n
					FROM petition
					GROUP BY YEAR(Petition_Date), MONTH(Petition_Date)
					ORDER BY YEAR(Petition_Date) DESC, MONTH(Petition_Date) DESC) dd
					ON pd.DATE = dd.DATE`;
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