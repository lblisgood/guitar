var http = require("http");
var url = "http://martinguitars.cn/item/19";
var reg1 = /<img[\s\S]*?src=\"(.*?)\"\s*class=\"attachment-entry_with_sidebar\s*wp-post-image\"[\s\S]*?>/;
var reg2 = /<a[\s\S]*?title=\'Permanent\s*Link:(.*?)\'\s*>/;
var reg3 = /<pre>([\s\S]*?)<\/pre>/;
var reg40 = /<main\s*class=\'content[\s\S]*?>([\s\S]*?)<\/main>/;
var reg4 = /<img\s*class=\"size-full[\s\S]*?src=\"(.*?)\"[\s\S]*?alt=\"(.*?)\"\s*\/>/g;
var reg5 = /<img\s*class=\"alignnone[\s\S]*?src=\"(.*?)\"[\s\S]*?alt=\"(.*?)\"\s*\/>/g;
var res = [];
var i = 0;
var gid = 0;
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


    var match = reg3.exec(data);
    console.log(match[1]);

}
