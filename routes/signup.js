const express = require('express');
const router = express.Router();
const bcrypt = require('bcrypt');

const db = require('../db');

router.get('/', function(req, res) {
	res.locals.message = req.session.message;
	delete req.session.message;
	res.render('signup');
});

router.post('/', function(req, res) {
	const staffID = req.body.staffID;
	const username = req.body.username;
	const password = req.body.password;
	console.log('signup:' + username + ' ' + password);
	if(username && password) {
		try {
			db.query('SELECT * FROM credential WHERE username = ? OR staff_ID = ?',[username, staffID], 
			function(err, result) {
				if(err) {
					console.log(err);
					throw err;
				}
				if(result.length > 0) {
					req.session.message = {
						type: "failed",
						message: "This username/ID has already used" };
					res.redirect('/signup');
				} else {
					try {
					db.query(`SELECT Department_ID
							FROM promote_history p
							INNER JOIN(
								SELECT Staff_ID, MAX(Promote_Date) AS Recent_Date
								FROM promote_history GROUP BY Staff_ID
							) md ON p.Staff_ID = md.Staff_ID AND Promote_Date = Recent_Date
							WHERE md.Staff_ID = ?`,[staffID], function(err, result){
								console.log(result);
								if (result.length == 0) {
									req.session.message = {
										type: "failed",
										message: "This ID is not in this company!" };
									res.redirect('/signup');
								} else if(result[0].Department_ID == 'DE001') {
									const pwHash = bcrypt.hashSync(password, 10);
									try {
										db.query('INSERT INTO credential(Staff_ID, username, password) VALUES(?, ?, ?)', [staffID, username, pwHash], 
										function(err, result){
											if(err) throw err;
											console.log(result);
										})
										req.session.message = {
											type: "success",
											message: "Sign Up success!"
										}
										res.redirect('/login');
									}
									catch(e) {
										req.session.message = {
											type: "failed",
											message: "Something wrong! Please Try again Later"
										}
										res.redirect('/signup')
									}
								} else {
									req.session.message = {
										type: "failed",
										message: "This ID is not in HR department!"
									}
									res.redirect('/signup')
								}
					})
					} catch(e) {
						req.session.message = {
							type: "failed",
							message: "Something wrong! Please Try again Later"
						}
						res.redirect('/signup')
					}
				}
			})
		} catch (e) {
			req.session.message = {
				type: "failed",
				message: "Something wrong! Please Try again Later"
			}
			res.redirect('/signup')
		}
	} else {
		res.redirect('/signup');
	}

})

module.exports = router