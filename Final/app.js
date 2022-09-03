var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

var indexRouter = require('./routes/index');
var cervezasRouter = require('./routes/cervezas');
var novedadesRouter = require('./routes/novedades');
var galeriaRouter = require('./routes/galeria');
var ubicacionRouter = require('./routes/ubicacion');
var contactoRouter = require('./routes/contacto');

var loginRouter = require('./routes/backoffice/login');
var landingRouter = require('./routes/backoffice/landing');
var productosRouter = require('./routes/backoffice/productos');
var productoRouter = require('./routes/backoffice/producto');

var app = express();

require('dotenv').config();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'hbs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', indexRouter);
app.use('/', cervezasRouter);
app.use('/', novedadesRouter);
app.use('/', galeriaRouter);
app.use('/', ubicacionRouter);
app.use('/', contactoRouter);

app.use('/', loginRouter);
app.use('/', landingRouter);
app.use('/', productosRouter);
app.use('/', productoRouter);

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
