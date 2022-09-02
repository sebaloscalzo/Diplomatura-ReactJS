const express = require('express');
var router = express.Router();

/* Inicio */
router.get('/novedades', (req, res, next) => {
	res.render('novedades', { title: 'Novedades', novedades: true, layout: 'index-layout' });
});
  
module.exports = router;