const express = require('express');
var router = express.Router();

var loginController = require('../../controllers/loginController');
var productosController = require('../../controllers/productosController');

const getProductoAsync = async (req, res, next) => {
	var action = req.query['a'];
	var id = req.query['id'];
	
	if (id != undefined && action != undefined) {
		res.response = await productosController.selectProducto(id);
	}
	else {
		res.redirect('/backoffice/productos');	
	}
  	next();
}

const productosMiddleware = async (req, res, next) => {
	var id = req.query['id'];
	var codigo = req.body['inputCodigo'];
	var nombre = req.body['inputNombre'];
	var descripcion = req.body['inputDescripcion'];
	var precio = req.body['inputPrecio'];
	var action = req.body['action'];

	if (action == 'd') {
		res.response = await productosController.deleteProducto(codigo);
	}
	else if (action == 'i') {
		res.response = await productosController.insertProducto(nombre, descripcion, precio);
	}
	else if (action == 'u') {
		res.response = await productosController.updateProducto(codigo, nombre, descripcion, precio);
	}
	else {
		res.response = await productosController.selectProducto(id);
	}
  	next();
}


/* Inicio */
router.get('/backoffice/producto', getProductoAsync, loginController.requireAuth, function(req, res) {
	//var usuario = req.cookies['usuario'];
	var isDelete = req.query['a'] == 'd';
	var isInsert = req.query['a'] == 'i';
	var isUpdate = req.query['a'] == 'u';
	var action = req.query['a'];
	res.render('backoffice/producto', { title: 'Cervecería SKOL | Backoffice', producto: res.response, error: false, action:action, isDelete: isDelete, isInsert: isInsert, isUpdate: isUpdate, layout: '/backoffice/menu-layout' });
});

router.post('/backoffice/producto', productosMiddleware, function(req, res) {
	if (res.response == null) {
		res.redirect('/backoffice/productos');	
	}
	else {
		res.render('backoffice/producto', { title: 'Cervecería SKOL', producto: res.response, error: true, layout: '/backoffice/menu-layout' });
	}
});

module.exports = router;