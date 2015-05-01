var fs = require('fs');
var path = require('path');

fs.open('test.txt', 'r',function opened(err,fd){

    if(err){
        throw err;
    }else{
        var readBuffer = new Buffer(1024),//读取缓冲区1024个字节
            bufferOffset = 0,//在缓冲区开始读取的位置
            bufferLength = readBuffer.length,
            filePosition = null;//在文件插入的位置
        fs.read(fd, readBuffer,bufferOffset,bufferLength,filePosition,function read(err,byte){

            if(err){
                throw err;
            }else{
                console.log(readBuffer.slice(0,byte).toString('utf8'));
            }

        })
    }

});
