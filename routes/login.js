const express = require('express');
const router = express.Router();
const bcrypt = require('bcrypt');

const db = require('../db');

const isLoggined = function(req, res, next) {
	if(!req.session.user) {
		next();	
	}else{
		res.redirect('/users/' + req.session.posID);
	}
};

router.get('/', isLoggined, function(req, res) {
	res.render('login');
});

router.post('/', function(req, res) {
	const username = req.body.username;
	const password = req.body.password;
	if(username && password) {
		//let query = 'SELECT * FROM credential WHERE username = \'' + username + '\'';
		console.log(username + " " + password);
		try {

		db.query('SELECT * FROM credential c LEFT JOIN promote_history p ON c.Staff_ID = p.Staff_ID WHERE username = ? ORDER BY Promote_Date DESC LIMIT 1',[username], 
			function(err, result){
			if(result.length > 0) {
				//console.log(result[0].Password);
				const correct = bcrypt.compareSync(password, result[0].Password);
				if(correct) {
					req.session.user = result[0].Username;
					req.session.posID = result[0].Position_ID;
					req.session.depID = result[0].Department_ID;
					res.redirect('/users/');
				}else{
					res.redirect('/login');
					//res.send('invalid password');
				}
			}else{
				res.redirect('/login');
			}
		})

		}catch (e){
			throw e;
		}
	}else {
		res.send('Please Enter Username and Password');
	}
});

module.exports = router;