const express = require('express');
const session = require('express-session');
const bodyParser = require('body-parser');
const bcrypt = require('bcrypt');
const ejs = require('ejs');

const app = express();

app.set('view engine', 'ejs');

app.use(bodyParser.urlencoded({ extended: false }))
app.use(express.static('public'));

const db = require('./db');

app.use(
	session({
		secret: 'thisisasecret',
		resave: false,
    	saveUninitialized: false
	})
)

const loginRouter = require('./routes/login');
const signupRouter = require('./routes/signup');
const mainRouter = require('./routes/home');

app.use('/login', loginRouter);
app.use('/signup', signupRouter);
app.use('/users', mainRouter);

app.get('/logout', function(req, res){
	res.redirect('/login');
	req.session.destroy();
});

app.listen(3000, function(){
	console.log('Server started on port 3000');
});