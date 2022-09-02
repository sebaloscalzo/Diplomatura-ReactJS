const express = require('express');
var router = express.Router();
var productosController = require('../controllers/productosController');

const asyncMiddleware = async (req, res, next) => {
	res.response = await productosController.selectProductos();
  	next();
}

/* Inicio */
router.get('/cervezas', asyncMiddleware, (req, res, next) => {
	res.render('cervezas', { title: 'Cervezas', cervezas: true, productos: res.response, layout: 'index-layout' });
});
  
module.exports = router;