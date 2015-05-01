var http = require('http');
var ms = require('mysql');
var url = "http://list.jd.com/list.html?cat=6233%2C6291%2C6299&ev=exbrand_%E4%BC%8A%E7%8F%AD%E5%A8%9C%EF%BC%88IBANEZ%EF%BC%89%40&page=2&JL=6_0_0";
var reg = /<div\s*class=\"p-img\"[\s\S]*?href=\"(.*?)\"[\s\S]*?data-lazy-img=\"(.*?)\"\s*\/>[\s\S]*?<a[\s\S]*?title=\"(.*?)\"\s*onclick=[\s\S]*?>/g;
var data = '';


var mq = ms.createConnection({
    host: "localhost",
    user: "root",
    password: ""
});
mq.connect();
mq.query('use guitar');


getDate(url);

function getDate(url){

    var req = http.request(url, function(res){
        var data = "";
        res.setEncoding("utf8");
        res.on('data', function(chunk){
            data += chunk;
        });
        res.on('end', function(){
            dealData(data);
            //console.log(data);
        });
    });
    req.end();

}



//处理数据函数

function dealData(data){


    while(match = reg.exec(data)){
        var sql_insert = "insert into shop set image='" + match[1] + "',link='" +  match[2] + "',title='" + match[3] + "',price=300";
        mq.query(sql_insert, function(err,rs){

            if(err){
                console.log(err);
            }else{
                console.log('insert ok!');
            }

        });
        /*console.log(match[1]);
        console.log(match[2]);
        console.log(match[3]);*/
    }

}