const express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');

function getTransport() {
	return nodemailer.createTransport({
		host: process.env.SMTP_HOST,
		port: process.env.SMTP_PORT,
		service: 'Gmail',
		auth: {
			user: process.env.SMTP_USER,
			pass: process.env.SMTP_PASS
		}
	});
}

/* Inicio */
router.get('/contacto', (req, res, next) => {
	res.render('contacto', { title: 'Contacto', contacto: true, layout: 'index-layout' });
});

router.post('/contacto', function(req, res) {

	var transport = getTransport();
	  
	var mailOptions = {
		from: 'Cerveceria Skol <' + req.body['inputMail'] + '>',
		to: process.env.SMTP_USER,
		subject: 'Consulta de ' + req.body['inputNombre'],
		text: req.body['inputMail'] + '\n' + req.body['inputConsulta']
	};
	  
	transport.sendMail(mailOptions, function(error, info){
		var err = false;
		var enviado = false;

		if (error) {
			err = true;
		  	console.log(error);
		} else {
			enviado = true;
		  	console.log('Email sent: ' + info.response);
		}
		res.render('contacto', { title: 'Contacto', contacto: true, error: err, enviado: enviado, layout: 'index-layout' });
	});
	
});

module.exports = router;