class ProductoModel {
	constructor(id, nombre, descripcion, precio, imagen) {
		this.id = id;
	  	this.nombre = nombre;
	  	this.descripcion = descripcion;
	  	this.precio = precio;
		this.imagen = imagen;
	}
}

var pm = new ProductoModel(); // this is crucial, one instance is created and cached by Node
module.exports.ProductoModel = ProductoModel;