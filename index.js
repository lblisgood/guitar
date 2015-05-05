/**
 * Created by lbl on 2015/4/4.
 */
/*
* module dependencies
* */

var express = require('express');
var routes = require('./routes');
var http = require('http');
var path = require('path');

var mongodb = require('mongodb'),
    mongodbServer = new mongodb.Server('localhost',27017,{ auto_reconnect: true,
        poolSize: 10 }),
    db = new mongodb.Db('guitar',mongodbServer);


var ms = require('mysql');

var mq = ms.createConnection({
    host: "localhost",
    user: "root",
    password: ""
});
mq.connect();

mq.query('use guitar');

/*new a express server*/

var app = express();

/*all environments*/

app.set('port', process.env.PORT || 3000);
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'jade');
app.use(express.favicon());
app.use(express.logger('dev'));
app.use(express.json());
app.use(express.urlencoded());
app.use(express.methodOverride());
app.use(app.router);
app.use(express.static(path.join(__dirname, 'public')));

/* development only*/

if('development' == app.get('env')){
    app.use(express.errorHandler());
}



app.get('/',routes.index);
app.get('/user',function(req,res){

    mq.query("select * from user" ,function(err,rs){

        if(err){
            console.log(err);
        }else{
            db.open(function(){
                db.collection('user',function(err,collection){
                    for(var i = 0; i < rs.length; i++){

                        collection.insert({
                            usr: rs[i].usr,
                            pwd: rs[i].pwd
                        }, function(err, data){

                            if(err){
                                console.log(err);
                            }else{
                                console.log('insert success');
                                //console.log(data);
                            }
                        });

                    }
                });

            });
            console.log(rs);
        }

    });

});

app.get('/showUser',function(req,res){

    db.open(function(){

        db.collection('user',function(err,collection){

            collection.find({
                usr: '123456'
            },function(err, data){
                if(err){
                    console.log(err);
                }else{
                    console.log(data);
                }
            });

        })

    })

})

/* new a  http server*/

http.createServer(app).listen(app.get('port'), function(){

    console.log('express server is listening port' + app.get('port'));

});
