exports.login = function(req,res){

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
        sqlcompare = "select pwd from user where usr='" + username + "'";

    if(username != 'undefined'){
        mq.query(sqlcompare,function(err,rs){

            if(err){
                console.log(err);
            }else if(rs.length != 0){

                if(password == rs[0].pwd){
                    res.setHeader("Set-Cookie", "username=" + decodeURIComponent(username)+";expires=36000");
                    res.redirect('/');
                }else{
                    res.render('login',{title: "用户登录",loginfail: '登录失败 密码错误！'});
                }

            }else{
                res.render('login',{title: "用户登录",loginfail: '登录失败 用户名错误！'});
            }

        });

    }else{
        res.render('login',{title: "用户登录"});
    }

};

exports.loginout = function(req,res){

    res.setHeader('Set-Cookie','username=;path="/";Expires=-1');
    res.redirect('/');

};
