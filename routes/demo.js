/**
 * Created by lbl on 2015/1/21.
 */

exports.demofn = function( req, res ){
    res.render('demo',{title : 'this is a demo'});
};
exports.getData = function( req, res ){
    var url = "http://image.baidu.com";
    var data = "";
    var req = http.request(url, function(res){
        res.setEncoding('utf8');
        res.on('data',function(chunk){
            data += chunk;
        });

        res.on('end',function(){
            res.render('demo',{data : data});
        })
    });
    req.end();
};

