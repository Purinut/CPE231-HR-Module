const express = require('express');
const router = express.Router();
const fs = require('fs');

const isLoggined = function(req, res, next) {
	if(!req.session.user) {
		res.redirect('/login');
	}
	next();
};

const getPetition = require('../chart/get_petition_amount');
const getStaffProp = require('../chart/get_staff_proportion');

router.get('/', isLoggined, function(req, res){
	const userSession = req.session;
	getPetition.getData();
	getStaffProp.getData();

	let rawPetition = fs.readFileSync('petition.json');
	let petition = JSON.parse(rawPetition);
	let rawStaffProp = fs.readFileSync('staff_proportion.json');
	let staffProp = JSON.parse(rawStaffProp);

	if(req.session.depID == 'DE001' && req.session.posID == 'PO002'){
		res.render('admin',{userSession: userSession, petition: petition, staffProp: staffProp});
	} 
	else if(req.session.depID == 'DE001' && req.session.posID == 'PO003'){
		res.render('assistant',{userSession: userSession});
	}
	else {
		res.render('users', {userSession: userSession});
	}
	//res.render('users',{username: req.session.user});
});

router.get('/forms/:form_type', isLoggined, function(req, res){
	res.redirect('/forms/' + req.params.form_type);
})

//admin: ST002 ST004
//assistant: ST003 ST011

// Simple forms:
// > Staff_Info (admin)
// > Petition (2 roles)
// > Contracts (admin)

// Complex forms:
// > Enroll (admin)
// > Promote (admin)
// > Recruit (assist)

// Analysis Report:
// > Staff Performance (2 roles)
// > Petition Amount (admin)
// > Staff Propotion (admin)

module.exports = router;