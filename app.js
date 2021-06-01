const express = require('express');
const session = require('express-session');
const bodyParser = require('body-parser');
const bcrypt = require('bcrypt');
const ejs = require('ejs');

const app = express();

app.set('view engine', 'ejs');

app.use(bodyParser.urlencoded({ extended: false }));
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
const formRouter = require('./routes/forms');
const deptPostAPI = require('./api/get_department_position');
const getPetition = require('./api/get_petition_amount');
const getStaffPerf = require('./api/get_staff_performance');
const getStaffProp = require('./api/get_staff_proportion');
const getTopPerf = require('./api/get_top_performance');

app.use('/login', loginRouter);
app.use('/signup', signupRouter);
app.use('/users', mainRouter);
app.use('/forms', formRouter);
app.use('/api/deptPost', deptPostAPI);
app.use('/api/get_petition_amount', getPetition);
app.use('/api/get_staff_performance', getStaffPerf);
app.use('/api/get_staff_proportion', getStaffProp);
app.use('/api/get_top_performance', getTopPerf);

app.get('/', function(req, res){
	res.redirect('/login');
})

app.get('/logout', function(req, res){
	res.redirect('/login');
	req.session.destroy();
});

app.listen(3000, function(){
	console.log('Server started on port 3000');
});