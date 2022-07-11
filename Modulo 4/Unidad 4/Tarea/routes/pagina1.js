var express = require('express');
var router = express.Router();

router.get('/pagina1', function(req, res) {
	res.render('pagina1');
});

router.post('/pagina1', function(req, res) {
	var nombre = req.body.nombre || '';
	var fechaNac = req.body.fechaNac || '';
	var pass = req.body.pass || '';
	var edad = '';
	var contrasenia = '';

	if (fechaNac != '') {
		edad = getAge(fechaNac);
	}
	if (pass != '') {
		contrasenia = getPass(pass);
	}

	res.render('pagina1', {
	  nombre: nombre,
	  edad: edad,
	  contrasenia: contrasenia
	});
});

function getAge(dateString) {
    var today = new Date();
    var birthDate = new Date(dateString);
    var age = today.getFullYear() - birthDate.getFullYear();
    var m = today.getMonth() - birthDate.getMonth();
    if (m < 0 || (m === 0 && today.getDate() < birthDate.getDate())) {
        age--;
    }
    return age;
}

function getPass(passString) {
	var pass = '';
	for (i = 0; i < passString.length; i++) {
		if (i == 0 || i == passString.length - 1) {
			pass += passString[i];
		}
		else if (i > 0 && i <= passString.length) {
			pass += '*';
		}
	}
	return pass;
}

module.exports = router;
