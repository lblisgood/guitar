exports.register = function(req,res){

    var ms = require('mysql');
    var url = require('url');

    var mq = ms.createConnection({
        host: "localhost",
        user: "root",
        password: ""
    });
    mq.connect();
    mq.query('use guitar');

    var username = encodeURIComponent(req.body.username),
        password = encodeURIComponent(req.body.pwd),
        sql = "insert into user set usr='" + username + "',pwd='" + password +"'";
        sqlcompare = "select id from user where usr='" + username + "'";

    if(username != 'undefined'){
        console.log(username);
        mq.query(sqlcompare,function(err,rs){

            if(!err && rs.length == 0){
                mq.query(sql, function(err,rs){

                    if(err){
                        console.log(err);
                    }else{
                        res.setHeader("Set-Cookie", "username=" + decodeURIComponent(username) +";expires=36000");
                        return res.redirect('/');
                    }

                });
            }else{
                res.render('register',{wrong: "账号已存在！"});
            }

        });
    }else{

        res.render('register',{title: "用户注册"});

    }

};
