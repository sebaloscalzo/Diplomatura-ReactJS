var express = require('express');
var router = express.Router();
var sql = require('../db');

const asyncMiddleware = async (req, res, next) => {
	res.response = await sql.query('select * from empleados');
	next();
}
  
router.get('/', function(req, res) {
	res.render('index');
});

router.post('/', asyncMiddleware, function(req, res) {

  let empleados;
  let error;

  if (res.response.recordset) {
    empleados = res.response.recordset.map((item)=>{
      return { 
        id: item.id_emp, 
        nombre: item.nombre,
        apellido: item.apellido,
        trabajo: item.trabajo,
        edad: item.edad,
        salario: item.salario,
        mail: item.mail
      }
    });
  }
  else {
    error = 'Ha ocurrido un error al obtener la lista de empleados.'
  }

	res.render('index', {
		empleados: empleados,
    error: error
	});
});

module.exports = router;
