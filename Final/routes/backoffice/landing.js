const express = require('express');
const moment = require('moment');
var router = express.Router();

var loginController = require('../../controllers/loginController');

/* Inicio */
router.get('/backoffice/landing', loginController.requireAuth, function(req, res) {
	var usuario = req.cookies['usuario'];
	moment.locale('es-AR');
	var fecha = moment().format('dddd') + ' ' + moment().format('LL');
	var hora = moment(moment()).format('HH:mm');
	res.render('backoffice/landing', { title: 'Cervecería SKOL | Backoffice', usuario: usuario.nombre, fecha: fecha, hora: hora, layout: '/backoffice/menu-layout' });
});

router.post('/backoffice/landing', function(req, res) {
	res.clearCookie('usuario');
	res.redirect('/backoffice');
})

module.exports = router;