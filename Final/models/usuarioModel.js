class UsuarioModel {
	constructor(username, password, nombre) {
	  this.username = username;
	  this.password = password;
	  this.nombre = nombre;
	}
}

var um = new UsuarioModel(); // this is crucial, one instance is created and cached by Node
module.exports = um;