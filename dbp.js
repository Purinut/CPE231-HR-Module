const mysql = require('mysql');

const connection = mysql.createConnection({
	host: 'localhost',
	user: 'root',
	password: '',
	database: 'hr_management'
})

const query_data = (query, parameter) => 
{
	return new Promise(function(resolve, reject){
		connection.connect(() => {
			connection.query(query, parameter, (err, result) => {
				if(err)
				{
					console.log(err);
					return reject(err);
				}

				resolve(result);
			})
		})
	})
}

module.exports = query_data;