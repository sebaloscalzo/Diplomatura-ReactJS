var sql = require('mssql');
var util = require('util');

exports.query = async (sqlQuery) => {

	var config = {
		server: process.env.SQL_SERVER, 
		database: process.env.SQL_DATABASE,
		user: process.env.SQL_USER,
		password: process.env.SQL_PASSWORD,
		port: parseInt(process.env.SQL_PORT),
		pool: {
			max: 10,
			min: 0,
			idleTimeoutMillis: 30000
		},
		options: {
			encrypt: false, // for azure
			trustServerCertificate: false // change to true for local dev / self-signed certs
		}
	};
	
	return await sql.connect(config).then(pool => {
		return pool.request().query(sqlQuery);
	}).then(result => {
		return result;
	}).catch(err => {
		return err;
	});
}