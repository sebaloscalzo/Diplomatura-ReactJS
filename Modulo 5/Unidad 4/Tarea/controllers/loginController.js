var sql = require('../db');
var md5 = require('md5');
var usuarioModel = require('../models/usuarioModel');

exports.login_post = async (usuario, password) => {
	var pass = md5(password).toUpperCase();
	var usuario = await sql.getUsuario(usuario, pass);

	if (usuario.rowsAffected[0] == 0) {
		return null;
	}
	else {
		usuarioModel.username = usuario.recordset[0].usuario;
		usuarioModel.nombre = usuario.recordset[0].nombre;
		return usuarioModel;
	}
}

exports.requireAuth = (req, res, next) => {
    if (req.cookies['usuario']) {
        next();
    } else {
		res.redirect('/');
    }
}