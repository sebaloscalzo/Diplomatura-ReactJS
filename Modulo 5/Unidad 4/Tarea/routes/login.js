const express = require('express');
var router = express.Router();
var loginController = require('../controllers/loginController');

const asyncMiddleware = async (req, res, next) => {
	res.response = await loginController.login_post(req.body.inputUsername, req.body.inputPassword);
  next();
}

/* Inicio */
router.get('/', function(req, res) {
  res.render('login', { title: 'Cervecería SKOL' });
});

/* Form submit */
router.post('/', asyncMiddleware, (req, res, next) => {
  if (res.response == null) {
    res.render('login', { status: 'Usuario y/o contraseña incorrecta' });
  }
  else {
    var expires = new Date(Date.now() + (30 * 60000));
    //var expires = new Date(Date.now() + 1000);
    res.cookie('usuario', res.response, { expires: expires });
    res.redirect('/landing');
  }
});

module.exports = router;