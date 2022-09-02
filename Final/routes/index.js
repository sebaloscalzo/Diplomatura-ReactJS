const express = require('express');
var router = express.Router();

/* Inicio */
router.get('/', (req, res, next) => {
	res.render('index', { title: 'Cervecería SKOL', index: true, productos: res.response, layout: 'index-layout' });
});
  
module.exports = router;