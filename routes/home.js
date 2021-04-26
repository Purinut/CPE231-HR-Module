const express = require('express');
const router = express.Router();

const isLoggined = function(req, res, next) {
	if(!req.session.user) {
		res.redirect('/login');
	}
	next();
};

router.get('/:id', isLoggined, function(req, res){
	res.render('users',{username: req.session.user});
});

module.exports = router;