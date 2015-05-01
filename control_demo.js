//引进HTTP服务器模块
var http = require("http");
//数据所在的网址链接
var url = ["http://martinguitars.cn/","http://martinguitars.cn/page/2","http://martinguitars.cn/page/3","http://martinguitars.cn/page/4","http://martinguitars.cn/page/5"];
//所需数据的正则表达式
var reg = /<img[\s\S]*?src=\"(.*?)\"\s*class=\"attachment-portfolio\s*wp-post-image\"[\s\S]*?>[\s\S]*?<h3[\s\S]*?class=\'slide-entry-title\s*entry-title\'[\s\S]*?><a\s*href=\'(.*?)\'\s*title=\'(.*?)\'>[\s\S]*?<time\s*class='\s*slide-meta-time\s*updated'[\s\S]*?>(.*?)<\/time>[\s\S]*?<div\s*class='\s*slide-entry-excerpt\s*entry-content'[\s\S]*?>([\s\S]*?)<\/div>/g;
var res = [];
var i = 0;
var gid = 0;
var regGid = /\d+/;

//引进mysql数据库模块
var ms = require('mysql');

//配置数据库信息
var mq = ms.createConnection({
    host: "localhost",
    user: "root",
    password: ""
});
//链接数据库
mq.connect();

mq.query('use guitar');


getDate(url[0]);
function getDate(url){

    // 创建一个请求
    var req = http.request(url, function(res){
        var data = "";
        // 设置显示编码
        res.setEncoding("utf8");
        // 数据是 chunked 发送，意思就是一段一段发送过来的
        // 我们使用 data 给他们串接起来
        res.on('data', function(chunk){
            data += chunk;
        });
        // 响应完毕时间出发，输出 data
        res.on('end', function(){
            //dealData(data);
            console.log(data);
        });
    });
// 发送请求
    req.end();

}



//处理数据函数

function dealData(data){

    while(match = reg.exec(data)){

        gid = regGid.exec(match[2])[0];

        mq.query('insert into guitar_list(gid,image,link,title,price,date,data) values(?,?,?,?,?,?,?)',[gid, match[1],match[2],match[3],'2000RMB',match[4],match[5]],function(err,rs){

            if(err){
                console.log(err);
            }else{
                console.log('Inserted: ' + rs.affectedRows + ' row.');
                console.log('Id inserted: ' + rs.insertId);
            }

        });

       /* res.push({
            "gid" : gid,
            "image" : match[1],
            "link" : match[2],
            "title" : match[3],
            "price" : "2000RMB",
            "date" : match[4],
            "data" : match[5]
        });*/

    }
    i++;
    if( i < url.length){
        getDate(url[i]);
    }else{
        console.log(res);
    }
}
