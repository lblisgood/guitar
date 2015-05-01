var http = require('http');
var url = "http://nodejs.cn/api/fs.read";

var req = http.request(url, function(res){
    var data = "";
    res.setEncoding("utf8");
    res.on('data', function(chunk){
        data += chunk;
    });
    res.on('end', function(){
        console.log(data);
    });
});
req.end();


