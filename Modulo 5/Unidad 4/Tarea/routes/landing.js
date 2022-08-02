const express = require('express');
var router = express.Router();

var loginController = require('../controllers/loginController');

/* Inicio */
router.get('/landing', loginController.requireAuth, function(req, res) {
	var usuario = req.cookies['usuario'];
	res.render('landing', { title: 'Cervecería SKOL', usuario: usuario.nombre, layout: 'landing-layout' });
});

router.post('/landing', function(req, res) {
	res.clearCookie('usuario');
	res.redirect('/');
})

module.exports = router;