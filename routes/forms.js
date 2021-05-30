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
        else if(req.params.form_type == 'add_petition'){
		res.render('forms/add_petition',{username: req.session.user});
	}
        else if(req.params.form_type == 'make_contract'){
		res.render('forms/make_contract',{username: req.session.user});
	}
        else if(req.params.form_type == 'enroll_course'){
		res.render('forms/enroll_course',{username: req.session.user});
	}
        else if(req.params.form_type == 'recruit_staff'){
		res.render('forms/recruit_staff',{username: req.session.user});
	}
})

router.post('/:form_type', isLoggined, function(req, res){
        let type = req.params.form_type
	if(type == 'add_staff') {
                addStaff(req, res);
	} else if(type == 'promote_staff') {
                promoteStaff(req, res);
        } else if(type == 'add_petition') {
                addPetition(req, res);
        } else if(type == 'make_contract') {
                makeContract(req, res);
        } else if(type == 'enroll_course') {
                enrollCourse(req, res);
        } else if(type == 'recruit_staff') {
                recruitStaff(req, res);
        } else {
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
        const queryOut = `SELECT MAX(Staff_ID) AS recentStaff
                FROM staff_info
                WHERE Staff_ID LIKE ?;`;
        let staffID = null;
        try {
                db.query(queryOut, [type + '%'], function(err, result) {
                        if(err) throw err;
                        // number = result[0].number + 1;
                        const number = parseInt(result[0].recentStaff.slice(2)) + 1;
                        if(number < 10) {
                                staffID = type + '00' + number;
                        } else if(number < 100) {
                                staffID = type + '0' + number;
                        } else if(number < 1000) {
                                staffID = type + number;
                        } else {
                                return console.log(error);
                        }
                        
                        // let queryIn = 'INSERT INTO staff_info(Staff_ID, Staff_FirstName, Staff_LastName, Staff_Sex, Staff_DoB, Staff_Address, Staff_Email, Staff_Tel, Staff_Status)\
                        //         VALUES(\'' + staffID + '\',\'' + firstName + '\',\'' + lastName + '\',\'' + sex + '\',\'' + DoB + '\',\'' + address + '\',\'' + email + '\',\'' + tel + '\',\'' + status + '\');';
                        const queryIn = `INSERT INTO staff_info(Staff_ID, Staff_FirstName, Staff_LastName, Staff_Sex, Staff_DoB, Staff_Address, Staff_Email, Staff_Tel, Staff_Status)
                                VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?);`;
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
        const staffID = req.body.staffID;
        const promoteDate = req.body.curDate;
        const departmentID = req.body.departmentID;
        const positionID = req.body.positionID;
        try {
                const queryIn = `INSERT INTO promote_history
                        VALUES(?, ?, ?, ?)`;
                db.query(queryIn, [staffID, promoteDate, departmentID, positionID], function(err, result) {
                        if(err) throw err;
                        console.log(result);
                })
        } catch (e) {
                throw e;
        }
        res.redirect('/forms/' + req.params.form_type);
}

function addPetition(req, res){

        // add value retrieving here

        const queryOut = `SELECT MAX(Petition_ID) AS recentPet
                FROM petition;`;
        let petitionID = 'PE';
        try {
                db.query(queryOut, function(err, result) {
                        if(err) throw err;
                        const number = parseInt(result[0].recentPet.slice(2)) + 1;
                        if(number < 10) {
                                petitionID = petitionID + '00' + number;
                        } else if(number < 100) {
                                petitionID = petitionID + '0' + number;
                        } else if(number < 1000) {
                                petitionID = petitionID + number;
                        } else {
                                return console.log(error);
                        }

                        // add sum query here

                })
        } catch (e) {
                throw e;
        }

        res.redirect('/forms/' + req.params.form_type);
}

function makeContract(req, res){

        // add value retrieving here

        const queryOut = `SELECT MAX(Contract_ID) AS recentCon
                FROM contract;`;
        let contractID = 'CO';
        try {
                db.query(queryOut, function(err, result) {
                        if(err) throw err;
                        const number = parseInt(result[0].recentCon.slice(2)) + 1;
                        if(number < 10) {
                                contractID = contractID + '00' + number;
                        } else if(number < 100) {
                                contractID = contractID + '0' + number;
                        } else if(number < 1000) {
                                contractID = contractID + number;
                        } else {
                                return console.log(error);
                        }

                        // add sum query here

                })
        } catch (e) {
                throw e;
        }

        res.redirect('/forms/' + req.params.form_type);
}

function enrollCourse(req, res){

        // add value retrieving here

        const queryOut = `SELECT MAX(Enroll_ID) AS recentEnroll
                FROM enroll_course;`;
        let enrollID = 'EC';
        try {
                db.query(queryOut, function(err, result) {
                        if(err) throw err;
                        const number = parseInt(result[0].recentEnroll.slice(2)) + 1;
                        if(number < 10) {
                                enrollID = enrollID + '00' + number;
                        } else if(number < 100) {
                                enrollID = enrollID + '0' + number;
                        } else if(number < 1000) {
                                enrollID = enrollID + number;
                        } else {
                                return console.log(error);
                        }

                        // add sum query here

                })
        } catch (e) {
                throw e;
        }

        res.redirect('/forms/' + req.params.form_type);
}

function recruitStaff(req, res){

        // add value retrieving here

        const queryOut = `SELECT MAX(RecruitApply_ID) AS recentApply
                FROM recruit_apply;`;
        let recruitApplyID = 'RA';
        try {
                db.query(queryOut, function(err, result) {
                        if(err) throw err;
                        const number = parseInt(result[0].recentApply.slice(2)) + 1;
                        if(number < 10) {
                                recruitApplyID = recruitApplyID + '00' + number;
                        } else if(number < 100) {
                                recruitApplyID = recruitApplyID + '0' + number;
                        } else if(number < 1000) {
                                recruitApplyID = recruitApplyID + number;
                        } else {
                                return console.log(error);
                        }

                        // add sum query here

                })
        } catch (e) {
                throw e;
        }

        res.redirect('/forms/' + req.params.form_type);
}

module.exports = router;