var ms = require('mysql');

var mq = ms.createConnection({
    host: "localhost",
    user: "root",
    password: ""
});
mq.connect();

mq.query('use guitar');

mq.query("select pic_detail from guitar_detail" ,function(err,rs){

    if(err){
        console.log(err);
    }else{
        console.log(decodeURIComponent(rs[21].pic_detail));
    }

});