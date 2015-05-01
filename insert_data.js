var ms = require('mysql');
var http = require("http");

var mq = ms.createConnection({
    host: "localhost",
    user: "root",
    password: ""
});
mq.connect();
mq.query('use guitar');


var reg1 = /<img[\s\S]*?src=\"(.*?)\"\s*class=\"attachment-entry_with_sidebar\s*wp-post-image\"[\s\S]*?>/;
var reg2 = /<a[\s\S]*?title=\'Permanent\s*Link:(.*?)\'\s*>/;
var reg3 = /<pre>([\s\S]*?)<\/pre>/;
var reg40 = /<main\s*class=\'content[\s\S]*?>([\s\S]*?)<\/main>/;
var reg4 = /<img\s*class=\"size-full[\s\S]*?src=\"(.*?)\"[\s\S]*?alt=\"(.*?)\"\s*\/>/g;

var main_pic = '',
    title = '',
    price = '',
    describe = '',
    pic_detail = [],
    basic_url = "http://martinguitars.cn/item/";

var sql = "select gid from guitar_list";

mq.query(sql,function(err,rs){

    if(err){
        console.log(err);
    }else{

                getDate(basic_url+rs[9].gid);

                setTimeout(function(){

                    var sql_insert = "insert into guitar_detail set gid=" + rs[1].gid +
                        ",main_pic='" + main_pic + "',title='" + title + "',price='" + price +
                        "',text='" + encodeURIComponent(describe) + "',pic_detail='" + pic_detail + "'";
                    console.log(sql_insert);
                    mq.query(sql_insert, function(err,rs){

                        if(err){
                            console.log(err);
                        }else{
                            console.log('insert ok');
                        }

                    })

                },5000);


        function getDate(url){

            var req = http.request(url, function(res){
                var data = "";
                res.setEncoding("utf8");
                res.on('data', function(chunk){
                    data += chunk;
                });
                res.on('end', function(){
                    dealData(data);
                });
            });
            req.end();

        }

        function dealData(data){

            main_pic = reg1.exec(data)[1];
            title = reg2.exec(data)[1];
            describe = reg3.exec(data)[1];
            price = parseInt(2000 + 1000*Math.random()) + "RMB";

            var match0 = reg40.exec(data);

            while(match = reg4.exec(match0[1])){
                pic_detail.push(match[1]);
            }
            if(pic_detail.length == 0){
                pic_detail = encodeURIComponent("暂无图片！");
                console.log('here');
            }else{
                console.log('there');
                console.log(pic_detail);
            }

        }

    }

});
