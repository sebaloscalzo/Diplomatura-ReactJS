const express = require('express');
var router = express.Router();
var productosController = require('../controllers/productosController');

const asyncMiddleware = async (req, res, next) => {
	res.response = await productosController.selectProductos();
  	next();
}

/* Inicio */
router.get('/galeria', asyncMiddleware, (req, res, next) => {
	res.render('galeria', { title: 'Galería', galeria: true, productos: res.response, layout: 'index-layout' });
});
  
module.exports = router;