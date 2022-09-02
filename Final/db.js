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

exports.selectProductos = async () => {
	return await sql.connect(getConfig()).then(pool => {
		return pool.request()
			.query('select * from productos');
	}).then(result => {
		return result;
	}).catch(err => {
		return err;
	});
}

exports.selectProducto = async (id) => {
	return await sql.connect(getConfig()).then(pool => {
		return pool.request()
			.input('id', sql.Int, id)
			.query('select * from productos where id = @id');
	}).then(result => {
		return result;
	}).catch(err => {
		return err;
	});
}

exports.updateProducto = async (id, nombre, descripcion, precio) => {
	return await sql.connect(getConfig()).then(pool => {
		return pool.request()
			.input('id', sql.Int, id)
			.input('nombre', sql.VarChar, nombre)
			.input('descripcion', sql.VarChar, descripcion)
			.input('precio', sql.Float, precio)
			.query('update productos set nombre = @nombre, descripcion = @descripcion, precio = @precio where id = @id');
	}).then(result => {
		return result;
	}).catch(err => {
		return err;
	});
}

exports.deleteProducto = async (id) => {
	return await sql.connect(getConfig()).then(pool => {
		return pool.request()
			.input('id', sql.Int, id)
			.query('delete from productos where id = @id');
	}).then(result => {
		return result;
	}).catch(err => {
		return err;
	});
}

exports.insertProducto = async (nombre, descripcion, precio) => {
	return await sql.connect(getConfig()).then(pool => {
		return pool.request()
			.input('nombre', sql.VarChar, nombre)
			.input('descripcion', sql.VarChar, descripcion)
			.input('precio', sql.Float, precio)
			.input('imagen', sql.VarChar, 'beer')
			.query('insert into productos (nombre, descripcion, precio, imagen) values (@nombre, @descripcion, @precio, @imagen)');
	}).then(result => {
		return result;
	}).catch(err => {
		return err;
	});
}
