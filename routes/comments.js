exports.comments = function(req,res){

    Date.prototype.format = function(format){
        var o = {
            "M+" : this.getMonth()+1, //month
            "d+" : this.getDate(), //day
            "h+" : this.getHours(), //hour
            "m+" : this.getMinutes(), //minute
            "s+" : this.getSeconds(), //second
            "q+" : Math.floor((this.getMonth()+3)/3), //quarter
            "S" : this.getMilliseconds() //millisecond
        };

        if(/(y+)/.test(format)) {
            format = format.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length));
        }

        for(var k in o) {
            if(new RegExp("("+ k +")").test(format)) {
                format = format.replace(RegExp.$1, RegExp.$1.length==1 ? o[k] : ("00"+ o[k]).substr((""+ o[k]).length));
            }
        }
        return format;
    };

    var text = req.body.text,
        date = new Date(),
        time = date.format("yyyy-MM-dd hh:mm:ss"),
        username = getCookie('username'),
        sql = "insert into comments set user='" + username + "',comment='" + text + "',date='" + time +"'";

    var ms = require('mysql');
    var url = require('url');

    var mq = ms.createConnection({
        host: "localhost",
        user: "root",
        password: ""
    });
    mq.connect();
    mq.query('use guitar');

    if(text && username){

        mq.query(sql, function(err,rs){

            if(err){
                console.log(err);
            }else{
                res.redirect('/');
            }

        })

    }





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