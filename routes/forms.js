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
        else if(req.params.form_type == 'promote_staff'){
		res.render('forms/promote_staff',{username: req.session.user});
	}

})

router.post('/:form_type', isLoggined, function(req, res){
        let type = req.params.form_type
	if(type == 'add_staff') {
                addStaff(req, res);
	} else if(type == 'promote_staff') {
                promoteStaff(req, res);
        } 
        else {
                res.send('error');
        }
})

function addStaff(req, res){
        const type = req.body.type;
        const firstName = req.body.firstName;
        const lastName = req.body.lastName;
        const sex = req.body.sex;
        const DoB = req.body.DoB;
        const address = req.body.address;
        const email = req.body.email;
        const tel = req.body.tel;
        const status = req.body.status;
        //let queryOut = 'SELECT COUNT(*) AS number FROM staff_info WHERE Staff_ID LIKE \'' + type + '%\'';
        const queryOut = 'SELECT COUNT(*) AS number FROM staff_info WHERE Staff_ID LIKE ?';
        let number = null;
        let staffID = null;
        try {

        db.query(queryOut, [type + '%'],function(err, result) {
                if(err) throw err;
                number = result[0].number + 1;
                if(number < 10) {
                        staffID = type + '00' + number;
                } else if(number < 100) {
                        staffID = type + '0' + number;
                } else if(number < 1000) {
                        staffID = type + number;
                } else {
                        return console.log(error);
                }
                //let queryIn = 'INSERT INTO staff_info(Staff_ID, Staff_FirstName, Staff_LastName, Staff_Sex, Staff_DoB, Staff_Address, Staff_Email, Staff_Tel, Staff_Status)\
                        //VALUES(\'' + staffID + '\',\'' + firstName + '\',\'' + lastName + '\',\'' + sex + '\',\'' + DoB + '\',\'' + address + '\',\'' + email + '\',\'' + tel + '\',\'' + status + '\');';
                const queryIn = "INSERT INTO staff_info(Staff_ID, Staff_FirstName, Staff_LastName, Staff_Sex, Staff_DoB, Staff_Address, Staff_Email, Staff_Tel, Staff_Status)\
                        VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)";
                db.query(queryIn, [staffID, firstName, lastName, sex, DoB, address, email, tel, status], function(err, result) {
                        if(err) throw err;
                        console.log(result);
                })
	})

        } catch (e) {
                throw e;
        }
        res.redirect('/forms/' + req.params.form_type);
}

function promoteStaff(req, res){
        res.redirect('/forms/' + req.params.form_type);
}

module.exports = router;