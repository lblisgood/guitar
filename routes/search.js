
exports.search = function(req,res){

    var ms = require('mysql');
    var url = require('url');

    var mq = ms.createConnection({
        host: "localhost",
        user: "root",
        password: ""
    });
    mq.connect();
    mq.query('use guitar');

    var keyword = url.parse(req.url, true).query.guitar,
        sql = "select * from guitar_list where title like '%" + keyword +"%'";

    console.log(sql);
    mq.query(sql,function(err,rs){

        if(err){
            console.log(err);
        }else{

            if(rs.length != 0){
                console.log(rs);
                res.render('index', { data: rs});
            }else{
                console.log(111);
                res.redirect('/noresult?keyword=' + keyword);
            }

        }

    });
};

exports.noresult = function(req,res){

    var keyword = req.query.keyword;
    res.render('noresult',{text: "查找不到与" + keyword + "产品！"});
}