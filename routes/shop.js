/**
 * Created by lbl on 2015/2/2.
 */
exports.show = function(req,res){
    var http = require('http');
    var ms = require('mysql');

    var mq = ms.createConnection({
        host: "localhost",
        user: "root",
        password: ""
    });
    mq.connect();
    mq.query('use guitar');

    var sql = "select * from shop";

    mq.query(sql, function(err,rs){

        if(err){
            console.log(err);
        }else{
            res.render('shop',{data: rs});
            console.log(rs);
        }

    });
};
