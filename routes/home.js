const express = require('express');
const router = express.Router();

const isLoggined = function(req, res, next) {
	if(!req.session.user) {
		res.redirect('/login');
	}
	next();
};

router.get('/', isLoggined, function(req, res){
	if(req.session.depID == 'DE001' && req.session.posID == 'PO002'){
		res.render('admin',{username: req.session.user});
	} 
	else if(req.session.depID == 'DE001' && req.session.posID == 'PO003'){
		res.render('assistant',{username: req.session.user});
	}
	else {
		res.send('Under construction');
	}
	//res.render('users',{username: req.session.user});
});

router.get('/forms/:form_type', isLoggined, function(req, res){
	if(req.params.form_type == 'add_staff'){
		res.render('forms/add_staff',{username: req.session.user});
	}	
})

router.post('/forms/:form_type', isLoggined, function(req, res){
	if(req.params.form_type == 'add_staff'){
		res.send('submitted');
	}	
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