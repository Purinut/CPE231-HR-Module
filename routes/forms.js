const express = require('express');
const router = express.Router();

const db = require('../db');

const isLoggined = function(req, res, next) {
	if(!req.session.user) {
		res.redirect('/login');
	}
	next();
};

router.get('/:form_type', isLoggined, function(req, res){
	if(req.params.form_type == 'add_staff'){
		res.render('forms/add_staff',{username: req.session.user});
	}	
})

router.post('/:form_type', isLoggined, function(req, res){
	if(req.params.form_type == 'add_staff') {
        const staffID = req.body.staffID;
        const firstName = req.body.firstName;
        const lastName = req.body.lastName;
        const sex = req.body.sex;
        const DoB = req.body.DoB;
        const address = req.body.address;
        const email = req.body.email;
        const tel = req.body.tel;
        const status = req.body.status;        
        let query = 'INSERT INTO staff_info(Staff_ID, Staff_FirstName, Staff_LastName, Staff_Sex, Staff_DoB, Staff_Address, Staff_Email, Staff_Tel, Staff_Status)\
                    VALUES(\'' + staffID + '\',\'' + firstName + '\',\'' + lastName + '\',\'' + sex + '\',\'' + DoB + '\',\'' + address + '\',\'' + email + '\',\'' + tel + '\',\'' + status + '\');';
        console.log(query);
        db.query(query, function(err, result) {
			if(err) throw err;
			console.log(result);
		})
        res.redirect('/forms/' + req.params.form_type);
	} else {
		res.send('error');
	}
})

module.exports = router;