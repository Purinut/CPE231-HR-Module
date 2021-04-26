const express = require('express');
const router = express.Router();
const bcrypt = require('bcrypt');

const db = require('../db');

router.get('/', function(req, res) {
	res.render('signup');
});

router.post('/', function(req, res) {
	const username = req.body.username;
	const password = req.body.password;
	console.log('signup:' + username + ' ' + password);
	if(username && password) {
		const pwHash = bcrypt.hashSync(password, 10);
		let query = 'INSERT INTO accounts(username, password) VALUES(\'' + username + '\', \'' + pwHash + '\');';
		console.log(query);
		db.query(query, function(err, result){
			if(err) throw err;
			console.log(result);
		})
		res.redirect('/login');
	} else {
		res.redirect('/signup');
	}

})

module.exports = router