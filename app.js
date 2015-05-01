
/**
 * Module dependencies.
 */
//express module
var express = require('express');
//解析客户端传过来的参数
var bodyParser = require('body-parser');
//HTTP 服务器
var http = require('http');
//url 解析模块
var path = require('path');


var routes = require('./routes');
var search = require('./routes/search');
var login = require('./routes/login');
var register = require('./routes/register');
var comments = require('./routes/comments');
var shop = require('./routes/shop');



var app = express();

// all environments
app.set('port', process.env.PORT || 3000);
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'jade');
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
app.use(express.favicon());
app.use(express.logger('dev'));
app.use(express.json());
app.use(express.urlencoded());
app.use(express.methodOverride());
app.use(app.router);
app.use(express.static(path.join(__dirname, 'public')));

// development only
if ('development' == app.get('env')) {
  app.use(express.errorHandler());
}

app.get('/', routes.index);
app.get('/page', routes.index);
app.get('/search', search.search);
app.get('/noresult',search.noresult);
app.get('/loginout',login.loginout);
app.all('/login',login.login);
app.all('/register',register.register);
app.post('/comments',comments.comments);
app.post('/getDetail',routes.getDetail);
app.get('/buy',routes.buy);
app.get('/shop',shop.show);

http.createServer(app).listen(app.get('port'), function(){

  console.log('Express server listening on port ' + app.get('port'));

});
