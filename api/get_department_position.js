const express = require('express');
const router = express.Router();

const db = require('../dbp');

router.get('/', async function(req, res) {
	const query = `SELECT * FROM department;`;
	let department = await db(query);
	console.log(department);
	res.send(department);
})

router.get('/:departmentID', async function(req, res){
	const deptID = req.params.departmentID;
	const query = `SELECT Position_ID, Position_Name FROM position 
					WHERE Department_ID = ? `;
	let position = await db(query, [deptID]);
	console.log(position);
	res.send(position);
})

module.exports = router;