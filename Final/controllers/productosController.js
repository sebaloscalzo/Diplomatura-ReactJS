var sql = require('../db');
var model = require('../models/productoModel');

exports.selectProductos = async () => {
	var rsProductos = await sql.selectProductos();

	if (rsProductos.rowsAffected[0] == 0) {
		return null;
	}
	else {
		var productos = [];
		for (i= 0; i < rsProductos.rowsAffected[0]; i++)
		{
			var pm = new model.ProductoModel(
				rsProductos.recordset[i].id,
				rsProductos.recordset[i].nombre,
				rsProductos.recordset[i].descripcion,
				rsProductos.recordset[i].precio,
				rsProductos.recordset[i].imagen
			);
			if (pm.imagen == null) {
				pm.imagen = pm.nombre.toString().toLowerCase();
			}
			productos.push(pm);
		}
		return productos;
	}
}

exports.selectProducto = async (id) => {
	var rsProductos = await sql.selectProducto(id);

	if (rsProductos.rowsAffected[0] == 0) {
		return null;
	}
	else {
		var producto = new model.ProductoModel(
			rsProductos.recordset[0].id,
			rsProductos.recordset[0].nombre,
			rsProductos.recordset[0].descripcion,
			rsProductos.recordset[0].precio,
			rsProductos.recordset[0].imagen,
		);
		if (producto.imagen == null) {
			pm.imagen = pm.nombre.toString().toLowerCase();
		}
	return producto;
	}
}

exports.updateProducto = async (id, nombre, descripcion, precio) => {
	var rsProductos = await sql.updateProducto(id, nombre, descripcion, precio);
	if (rsProductos.state == undefined) {
		return null;
	}
	else {
		return await this.selectProducto(id);
	}
}

exports.deleteProducto = async (id) => {
	var rsProductos = await sql.deleteProducto(id);
	return null;
}

exports.insertProducto = async (nombre, descripcion, precio) => {
	var rsProductos = await sql.insertProducto(nombre, descripcion, precio);
	return null;
}
