const express = require('express');
var router = express.Router();

/* Inicio */
router.get('/ubicacion', (req, res, next) => {
	res.render('ubicacion', { title: 'Ubicación', ubicacion: true, layout: 'index-layout' });
});
  
module.exports = router;