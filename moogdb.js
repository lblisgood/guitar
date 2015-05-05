var mongodb = require('mongodb'),
    mongodbServer = new mongodb.Server('localhost',27017,{ auto_reconnect: true,
    poolSize: 10 }),
    db = new mongodb.Db('guitar',mongodbServer);


db.open(function(){
    db.collection('users',function(err,collection){
        for(var i = 0; i < 10; i++){

            collection.insert({
                name: 'lbl' + i,
                email: 'lbl727896@sina.com' + i,
                tel: [
                    '124555555',
                    '223223525'
                ]
            }, function(err, data){

                if(err){
                    console.log(err);
                }else{
                    console.log('insert success');
                    //console.log(data);
                }
            });

        }
    })

});
