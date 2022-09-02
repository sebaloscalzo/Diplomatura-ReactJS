const express = require('express');
var router = express.Router();
var loginController = require('../../controllers/loginController');

const asyncMiddleware = async (req, res, next) => {
	res.response = await loginController.login_post(req.body.inputUsername, req.body.inputPassword);
  next();
}

/* Inicio */
router.get('/backoffice', function(req, res) {
  res.clearCookie('usuario');
  res.render('backoffice/login', { title: 'Cervecería SKOL', layout: '/backoffice/login-layout' });
});

/* Form submit */
router.post('/backoffice', asyncMiddleware, (req, res, next) => {
  if (res.response == null) {
    res.render('backoffice/login', { status: 'Usuario y/o contraseña incorrecta', layout: '/backoffice/login-layout' });
  }
  else {
    var expires = new Date(Date.now() + (30 * 60000));
    //var expires = new Date(Date.now() + 1000);
    res.cookie('usuario', res.response, { expires: expires });
    res.redirect('/backoffice/landing');
  }
});

module.exports = router;