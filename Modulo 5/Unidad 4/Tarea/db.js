var sql = require('mssql');
var util = require('util');

function getConfig() {
	return {
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
}

exports.getUsuario = async (usuario, password) => {
	return await sql.connect(getConfig()).then(pool => {
		return pool.request()
			.input('usuario', sql.VarChar, usuario)
			//.input('usuario', sql.NVarChar, value)
			.query('select * from usuarios where usuario = @usuario');
	}).then(result => {
		return result;
	}).catch(err => {
		return err;
	});
}