const express = require('express');
var router = express.Router();

var loginController = require('../../controllers/loginController');
var productosController = require('../../controllers/productosController');

const asyncMiddleware = async (req, res, next) => {
	res.response = await productosController.selectProductos();
  	next();
}

/* Inicio */
router.get('/backoffice/productos', asyncMiddleware, loginController.requireAuth, function(req, res) {
	var usuario = req.cookies['usuario'];
	res.render('backoffice/productos', { title: 'Cervecería SKOL', productos: res.response, layout: '/backoffice/menu-layout' });
});

// router.post('/backoffice/productos', function(req, res) {
// 	res.clearCookie('usuario');
// 	res.redirect('/backoffice');
// })

module.exports = router;