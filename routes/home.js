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

//admin: ST002 ST004
//assistant: ST003 ST011

module.exports = router;