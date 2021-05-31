const express = require('express');
const router = express.Router();

const db = require('../db');

const isLoggined = function(req, res, next) {
	if(!req.session.user) {
		res.redirect('/login');
	}
	res.locals.message = req.session.message;
	delete req.session.message;
	next();
};

router.get('/:form_type', isLoggined, function(req, res){

	const userSession = req.session;

	if(req.params.form_type == 'add_staff'){
		res.render('forms/add_staff',{userSession: userSession});
	}
	else if(req.params.form_type == 'promote_staff'){
		res.locals.staffInfo = req.session.staffInfo;
		delete req.session.staffInfo;

		res.locals.departIDList = req.session.departIDList;
		delete req.session.departIDList;

		res.locals.departPos = req.session.departPos;
		delete req.session.departPos;

		res.render('forms/promote_staff',{userSession: userSession});
	}
	else if(req.params.form_type == 'add_petition'){
		res.render('forms/add_petition',{userSession: userSession});
	}
	else if(req.params.form_type == 'make_contract'){
		res.render('forms/make_contract',{userSession: userSession});
	}
	else if(req.params.form_type == 'enroll_course'){
		res.render('forms/enroll_course',{userSession: userSession});
	}
	else if(req.params.form_type == 'recruit_staff'){
		res.render('forms/recruit_staff',{userSession: userSession});
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

// function promoteStaff(req, res){
//         const staffID = req.body.staffID;
//         const promoteDate = req.body.curDate;
//         const departmentID = req.body.departmentID;
//         const positionID = req.body.positionID;
//         try {
//                 const queryIn = `INSERT INTO promote_history
//                         VALUES(?, ?, ?, ?)`;
//                 db.query(queryIn, [staffID, promoteDate, departmentID, positionID], function(err, result) {
//                         if(err) throw err;
//                         console.log(result);
//                 })
//         } catch (e) {
//                 throw e;
//         }
//         res.redirect('/forms/' + req.params.form_type);
// }

function promoteStaff(req, res){
	if (!req.body.SelectPosition) {
		const staffID = req.body.staffID;
		try {
			const queryStaffOut = `SELECT t.Staff_ID, t.Staff_FirstName, t.Staff_LastName, t.Department_ID, t.Position_ID, d.Department_Name, t.Position_Name
				FROM Department d
					RIGHT JOIN
						(SELECT lastP.Staff_ID, lastP.Staff_FirstName, lastP.Staff_LastName, po.Department_ID, po.Position_ID, po.Position_Name
						FROM Position po 
							RIGHT JOIN
								(SELECT s.Staff_ID, s.Staff_FirstName, s.Staff_LastName, p.Department_ID, p.Position_ID
								FROM Staff_Info AS s
									RIGHT JOIN
										(SELECT Staff_ID, Department_ID, Position_ID
										FROM Promote_History
										WHERE	(Staff_ID, Promote_Date) IN
											(SELECT Staff_ID, MAX(Promote_Date)
											FROM Promote_History
											GROUP BY Staff_ID)) AS p
									ON s.Staff_ID = p.Staff_ID) AS lastP
							ON po.Department_ID = lastP.Department_ID
								AND po.Position_ID = lastP.Position_ID) AS t
					ON d.Department_ID = t.Department_ID
				WHERE Staff_ID = ?;`;
			db.query(queryStaffOut, [staffID],
				function(err, result) {                        
					if(err) {
						console.log('query staffInfo error!!!!!!!!!!!');
						console.log(err);
						throw err;
					} else if(result.length == 1) {
						req.session.staffInfo = {
							staffID: result[0].Staff_ID,
							firstName: result[0].Staff_FirstName,
							lastName: result[0].Staff_LastName,
							departmentID: result[0].Department_ID,
							positionID: result[0].Position_ID,
							departmentName: result[0].Department_Name,
							positionName: result[0].Position_Name
						};
						const staffDepartID = result[0].Department_ID;
						const staffPosID = result[0].Position_ID;
						try {
							db.query(`SELECT d.Department_ID, d.Department_Name, p.Position_ID, p.Position_Name
								FROM Department d JOIN Position p
									ON d.Department_ID = p.Department_ID
									WHERE (d.Department_ID, p.Position_ID) != (?, ?);`, [staffDepartID, staffPosID],
								function(err, result2) {
									if (err) throw err;
									console.log('query success');
									let departPos = [];
									let departIDList = [];
									let j = 0;
									departIDList.push({
										departmentID: result2[0].Department_ID,
										departmentName: result2[0].Department_Name
									});
									j++;
									for(i=0; i<result2.length; i++) {
										let curID = result2[i].Department_ID;
										if (curID != departIDList[j-1].departmentID) {
											departIDList.push({
												departmentID: result2[i].Department_ID,
												departmentName: result2[i].Department_Name
											});
											j++;
										}
										if (departPos.length < j) {
											departPos[j-1] = [];
											departPos[j-1].push({
												positionID: result2[i].Position_ID,
												positionName: result2[i].Position_Name
											});
										} else {
											departPos[j-1].push({
												positionID: result2[i].Position_ID,
												positionName: result2[i].Position_Name
											});
										}										
									}
									req.session.departIDList = departIDList;
									req.session.departPos = departPos;
									res.redirect('/forms/' + req.params.form_type);
								}
							)
						} catch (e) {
							console.log('query depart pos error');
						}
					} else {
						console.log('empty query');
						res.redirect('/forms/' + req.params.form_type);
					}
				}
			)
		} catch (e) {
			console.log('error out here????????????');
			res.redirect('/forms/' + req.params.form_type);
		}
	} else {
		console.log('position selected');
		res.redirect('/forms/' + req.params.form_type);
	}
	
	// res.redirect('/forms/' + req.params.form_type);
}

function addPetition(req, res){
	const staffID = req.body.staffID;
	const petitionDate = req.body.PetDate;
	const petitionContent = req.body.content;

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

			const queryIn = `INSERT INTO petition
					VALUES(?, ?, ?, ?, ?)`;
			db.query(queryIn, [petitionID, staffID, petitionDate, petitionContent, 'Unread'], 
			function(err, result) {
				if(err) throw err;
				console.log(result);
			})

		})
	} catch (e) {
		throw e;
	}

	res.redirect('/forms/' + req.params.form_type);
}

function makeContract(req, res){

	// add value retrieving here
	const staffID = req.body.staffID;
	const startDate = req.body.startDate;
	const endDate = req.body.endDate;

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
			const queryIn = `INSERT INTO contract
					VALUES(?, ?, ?, ?)`;
			db.query(queryIn, [contractID, staffID, startDate, endDate], 
			function(err, result) {
				if(err) throw err;
				console.log(result);
			})


		})
	} catch (e) {
		throw e;
	}

	res.redirect('/forms/' + req.params.form_type);
}

function enrollCourse(req, res){
	const staffID = req.body.staffID;
	const courseID = req.body.courseID;

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

			const queryIn = `INSERT INTO enroll_course 
					VALUES(?, ?, ?); `;
			const queryCheck = `SELECT Course_Seat, Status FROM train_course WHERE course_ID = ?`;
			db.query(queryCheck, [courseID], function(err, result){
				if(result[0].Status == 'InProgress' || result[0].Status == 'InComing'){
					if(result[0].Course_Seat > 0)
						db.query(queryIn, [enrollID, courseID, staffID], function(err, result){
							if(err) throw err;
							console.log(result);

							db.query(`UPDATE train_course 
								SET Course_Seat = Course_Seat - 1
								WHERE Course_ID = ?`, [courseID], function(err,result){
									if(err) throw err;
									console.log(result);
									req.session.message = {
										type: 'success',
										message: 'Enroll Success!'
									};
									res.redirect('/forms/' + req.params.form_type);
								})
							//res.redirect('/forms/' + req.params.form_type);
						});
					else{
						//no availble seat
						req.session.message = {
							type: 'failed',
							message: 'No available seat!'
						};
						res.redirect('/forms/' + req.params.form_type);
					}
				}else{
					//this course has been completed
					req.session.message = {
						type: 'failed',
						message: 'This course has been completed!'
					};
					res.redirect('/forms/' + req.params.form_type);
				}
			})
		})
	} catch (e) {
		throw e;
		res.redirect('/forms/' + req.params.form_type);
	}
	//res.redirect('/forms/' + req.params.form_type);
}

function recruitStaff(req, res){

	// add value retrieving here
	const recruitID = req.body.recruitID;
	const staffID = req.body.staffID;

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
			const queryIn = `INSERT INTO recruit_apply
					VALUES(?, ?, ?)`;
			db.query(queryIn, [recruitApplyID, recruitID, staffID], 
			function(err, result) {
				if(err) throw err;
				console.log(result);
			})

		})
	} catch (e) {
		throw e;
	}

	res.redirect('/forms/' + req.params.form_type);
}

module.exports = router;