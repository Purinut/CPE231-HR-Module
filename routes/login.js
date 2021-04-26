const express = require('express');
const router = express.Router();
const bcrypt = require('bcrypt');

const db = require('../db');

const isLoggined = function(req, res, next) {
	if(!req.session.user) {
		next();	
	}else{
		res.redirect('/users/' + req.session.userID);
	}
};

router.get('/', isLoggined, function(req, res) {
	res.render('login');
});

router.post('/', function(req, res) {
	const username = req.body.username;
	const password = req.body.password;
	if(username && password) {
		let query = 'SELECT * FROM accounts WHERE username = \'' + username + '\'';
		console.log(username + " " + password);
		db.query(query, function(err, result){
			if(result.length > 0) {
				const correct = bcrypt.compareSync(password, result[0].password);
				if(correct) {
					req.session.user = result[0].username;
					req.session.userID = result[0].id;
					res.redirect('/users/' + req.session.userID);
				}else{
					res.redirect('/login');
					//res.send('invalid password');
				}
			}else{
				res.redirect('/login');
			}
		})
	}else {
		res.send('Please Enter Username and Password');
	}
});

module.exports = router;