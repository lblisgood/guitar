
/*
 * GET home page.
 */

exports.index = function(req, res){

    var ms = require('mysql');
    var url = require('url');

    var mq = ms.createConnection({
        host: "localhost",
        user: "root",
        password: ""
    });
    mq.connect();
    mq.query('use guitar');

    var page = parseInt(url.parse(req.url,true).query.page),
        start = page ? (page-1)*9 : 0,
        end = page ? page*9 : 9,
        allData = [],
        showData = [],
        count = 0,
        comments = '',
        username = getCookie('username'),
        sql = "select * from guitar_list order by gid DESC",
        sqlcomments = "select * from comments order by date DESC";

    mq.query(sql,function(err,rs){

        if(err){
            console.log(err);
        }else{
            allData = rs;
            count = Math.ceil(allData.length / 9);
            showData = allData.slice(start,end);

            mq.query(sqlcomments,function(err,rs){

                if(err){
                    console.log(err);
                }else{
                    comments = rs;
                    console.log(comments);
                    res.render('index', { data: showData, count: count,page: page,user: username,comments: comments});
                }

            })
        }

    });

    function getCookie(name){

        var cookies = req.headers.cookie;
        if(cookies){

            var res = cookies.split(';'),
                temp = [],
                part = [];

            for(var i = 0; i < res.length; i++){
                temp = res[i].split('=');
                part[temp[0]] = temp[1];

            }

            return part[name] ? part[name] : null;
        }


    }

};

exports.buy = function(req,res){

    res.render('buy');

};

exports.getDetail = function(req,res){

    var ms = require('mysql');
    var url = require('url');

    var mq = ms.createConnection({
        host: "localhost",
        user: "root",
        password: ""
    });
    mq.connect();
    mq.query('use guitar');

    var sql = "select * from guitar_detail where gid = " + req.body.gid;

    mq.query(sql, function(err,rs){

        if(err){
            console.log(err);
        }else{
            res.send(rs);
        }

    })

};