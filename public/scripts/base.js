//点击显示/隐藏搜索框
(function(){

    var oSearch = document.getElementById('search'),
        oForm = document.getElementById('search_form'),
        flag = false;

    oSearch.addEventListener('click',function(){
        if(!flag){
            oForm.className += " show_form";
            flag = !flag;
        }else{
            var classString = oForm.getAttribute('class'),
                index = classString.indexOf('show_form');

            if(index){
                oForm.className = classString.substring(0,index-1);
                flag = !flag;
            }
        }
    });
    oForm.addEventListener('click',function(e){
        stopPropagation(e)
    });

})();

//阻止冒泡
function stopPropagation(e) {
    e = e || window.event;
    if(e.stopPropagation) { //W3C阻止冒泡方法
        e.stopPropagation();
    } else {
        e.cancelBubble = true; //IE阻止冒泡方法
    }
}

//获取css属性
function getStyle(obj,attr){
    if(obj.style.attr != null){
        return obj.style.attr;
    }else if(window.currentStyle){
        return obj.currentStyle[attr];
    }else{
        return getComputedStyle(obj,null)[attr];
    }

}

//去掉字符窜两边空格
function trim(str){
    return str.replace(/(^\s*)|(\s*$)/g, "");
}

//获取cookie
function getcookie(name, nounescape) {
    var cookie_start = document.cookie.indexOf(name);
    var cookie_end = document.cookie.indexOf(";", cookie_start);
    if(cookie_start == -1) {
        return '';
    } else {
        var v = document.cookie.substring(cookie_start + name.length + 1, (cookie_end > cookie_start ? cookie_end : document.cookie.length));
        return !nounescape ? unescape(v) : v;
    }
}



//banner 轮播

(function(){

    var transitionEnd = (function() {
        var el = document.createElement('horcrux'),
            transEndEventNames = {
                'WebkitTransition' : 'webkitTransitionEnd'
                , 'MozTransition' : 'transitionend'
                , 'OTransition'	: 'oTransitionEnd otransitionend'
                , 'transition' : 'transitionend'
            },
            attr;

        for (attr in transEndEventNames) {
            if (el.style[attr] !== undefined) {
                return transEndEventNames[attr];
            }
        }

        return false;
    }());


    var timer = null,
        oBanner = document.getElementById('banner'),
        next = 0,
        next_current = null,
        current_left = 0,
        aDiv =document.getElementsByClassName('slide'),
        nextViews = document.getElementById('prev'),
        prevViews = document.getElementById('next');

    if(oBanner){
        nextViews.addEventListener('click',function(){

            next_current = document.getElementsByClassName('current_views')[0];
            current_left = parseInt(getStyle(next_current,'left'));
            if(current_left == 0){
                autoMove();
            }else{
                return false;
            }

        },false);

        prevViews.addEventListener('click',function(){

            next_current = document.getElementsByClassName('current_views')[0];
            current_left = parseInt(getStyle(next_current,'left'));

            if(current_left == 0){
                goBack();
            }else{
                return false;
            }

        },false);



        timer = setInterval(function(){

            autoMove();

        },6000);

        oBanner.addEventListener('mouseover',function(){

            clearInterval(timer);

        });

        oBanner.addEventListener('mouseout',function(){

            timer = setInterval(function(){

                autoMove();

            },6000);

        });

        function autoMove(){


            var current = document.getElementsByClassName('current_views')[0];
            var next = document.getElementsByClassName('next_views')[0];

            function changeClass(){

                for( var i = 0; i < aDiv.length; i++){
                    aDiv[i].className = 'slide';
                }
                next.className = "slide current_views";

                if(next.nextSibling){
                    next.nextSibling.className = "slide next_views";
                }else{
                    aDiv[0].className = "slide next_views";
                }
                current.removeEventListener(transitionEnd,changeClass,false);
            }

            current.className += " move";
            next.className += ' next_move';
            current.addEventListener(transitionEnd,changeClass,false);

        }

        function goBack(){


            var current = document.getElementsByClassName('current_views')[0],
                next = document.getElementsByClassName('next_views')[0],
                last = current.previousSibling ? current.previousSibling : aDiv[aDiv.length - 1];

            function changeClass(){

                for( var i = 0; i < aDiv.length; i++){
                    aDiv[i].className = 'slide';
                }
                current.className = 'slide next_views';
                last.className = "slide current_views";

                current.removeEventListener(transitionEnd,changeClass,false);
            }

            current.className += " move";
            last.className += ' next_views';
            setTimeout(function(){
                last.className += ' next_move';
            },0);
            next.className = 'slide';
            current.addEventListener(transitionEnd,changeClass,false);

        }

    }

})();

//鼠标滑过显示cover
(function(){

    var oBox = document.getElementById('wrap');

    if(oBox){

        var aImg = oBox.getElementsByTagName('img'),
            oCover = null,
            aCover = oBox.getElementsByClassName('cover');

        for(var i = 0; i < aImg.length; i++){
            aImg[i].addEventListener('mouseover',function(){
                oCover = this.nextSibling;
                oCover.style.display = "block";

            });

        }

        for(var k = 0; k < aCover.length; k++){
            aCover[k].addEventListener('mouseleave',function(){

                this.style.display = "none";

            });
        }
    }

})();

//点击加入对比

(function(){

    var oWrap = document.getElementById('wrap'),
        oCompare = document.getElementById('compare'),
        oClose = document.getElementById('close'),
        count = 0,
        index = 1;

    if(oWrap){
        oWrap.addEventListener('click',function(ev){

            var e = ev || window.event;
            var target = e.target || e.srcElement;

            if(target.tagName.toLocaleLowerCase() == 'a' && target.className == 'compare'){
                var gid = target.getAttribute('gid');

                ajaxSub(gid);

                if(count == 1){
                    oCompare.style.display = 'block';
                }else{
                    count++;
                }
            }

        },false);

        oClose.addEventListener('click',function(){


            oCompare.style.display = "none";
            count = 0;
            index = 1;

        },false)
    }


    //ajax 异步请求
    function ajaxSub(gid){

        function createHttp(){
            var xmlHttp = null;

            try{
                xmlHttp = new XMLHttpRequest();
            } catch(e){
                try{
                    xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
                }catch(e){
                    xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
                }
            }
            return xmlHttp;
        }

        var xhr = createHttp();
        var postData = 'gid=' + gid;

        xhr.open("POST","/getDetail",true);
        xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
        xhr.onreadystatechange = function(){

            if(xhr.readyState == 4 && xhr.status == 200){

                insertData(JSON.parse(xhr.responseText));
            }

        };
        xhr.send(postData);
        event.preventDefault();


    }

    function insertData(data){

        var oCompare =document.getElementById('compare');

        if(oCompare){
            var oOne = document.getElementById('one'),
                oTow = document.getElementById('tow'),
                obj = null;

            if(index==1){
                obj = oOne;
                index++;
            }else if(index == 2){
                obj = oTow;
            }

            var main_image = obj.getElementsByClassName('main_image')[0],
                name = obj.getElementsByClassName('name')[0],
                args = obj.getElementsByClassName('args')[0],
                price = obj.getElementsByClassName('price')[0],
                pic_x = obj.getElementsByClassName('pic_x')[0],
                pic_f = obj.getElementsByClassName('pic_f')[0],
                pic_b = obj.getElementsByClassName('pic_b')[0],
                pic_h = obj.getElementsByClassName('pic_h')[0],
                pic_t = obj.getElementsByClassName('pic_t')[0];

            main_image.setAttribute('src',data[0]["main_pic"]);
            name.innerHTML = data[0]["title"];
            price.innerHTML = "￥：" + data[0]["price"];
            args.innerHTML = trim(data[0]["text"]);

            var temp = data[0]["pic_detail"].split(",");

                if(temp.length == 4) {
                    pic_x.setAttribute('src',data[0]["main_pic"]);
                    pic_f.setAttribute('src',temp[0]);
                    pic_b.setAttribute('src',temp[1]);
                    pic_h.setAttribute('src',temp[2]);
                    pic_t.setAttribute('src',temp[3]);
                }else if(temp.length == 5){
                    pic_x.setAttribute('src',temp[0]);
                    pic_f.setAttribute('src',temp[1]);
                    pic_b.setAttribute('src',temp[2]);
                    pic_h.setAttribute('src',temp[3]);
                    pic_t.setAttribute('src',temp[4]);
                }
        }


    }

})();

//登录模块
(function(){

    var oForm = document.getElementById('login_form'),
        oName = document.getElementById('usr'),
        oPwd = document.getElementById('pwd'),
        oLog = document.getElementById('log'),
        oReg = document.getElementById('reg'),
        oWrong = document.getElementById('wrong');

    if(oLog){

        oLog.addEventListener('click',function(){
            if(trim(oName.value).length > 2 && trim(oPwd.value).length > 2){
                oForm.submit();
            }else{
                oWrong.innerHTML = "用户名/密码不能为空，且不少于3位";
                setTimeout(function(){
                    oWrong.innerHTML="";
                },3000);
            }

        },false);

    }

    if(oReg){

        oReg.addEventListener('click',function(){
            if(trim(oName.value).length > 2 && trim(oPwd.value).length > 2){
                oForm.submit();
            }else{
                oWrong.innerHTML = "用户名/密码不能为空，且不少于3位";
                setTimeout(function(){
                    oWrong.innerHTML="";
                },3000);
            }

        },false);

    }

})();

//评论模块

(function(){

    var oForm = document.getElementById('question'),
        oText = document.getElementById('describe'),
        cookie = getcookie('username'),
        oSub = document.getElementById('submit_reply');

    if(oForm){
        oSub.addEventListener('click',function(){
            if(cookie != ''){
                if(trim(oText.value).length > 0){
                    oForm.submit();
                }else{
                    oText.value = "评论内容不能为空！";
                    setTimeout(function(){
                        oText.value = "";
                    },500)
                }
            }else{
                alert('不登陆、就评论 就是耍流氓！');
            }

        },false)
    }

})();

//主菜单切换

(function(){

    var oMenu = document.getElementById('menu'),
        aLi = oMenu.getElementsByTagName('li'),
        page = ['/','/shop','/buy'],
        pathname = location.pathname;

    for(var i = 0; i < page.length; i++){

        if(page[i] == pathname){
            aLi[i].className = "active";
        }

    }

})();

//返回顶部

(function(){

    var oBtn = document.getElementById('toTop'),
        Top = '',
        timer = null;

    if(oBtn){
        oBtn.addEventListener('click',function(){

            window.scroll(0,0);
            oBtn.style.display = "none";

        },false);
    }

    window.addEventListener('scroll',function(){

        clearInterval(timer);
        setTimeout(function(){

            Top = getScrollTop();
            if(Top >150){
                oBtn.style.display = "block";
                oBtn.style.top = 450 + Top + "px";
            }

        },300)

    });

    function getScrollTop(){

        var scrollTop=0;

        if(document.documentElement&&document.documentElement.scrollTop){
            scrollTop=document.documentElement.scrollTop;
        }else if(document.body){
            scrollTop=document.body.scrollTop;
        }
        return scrollTop;
    }


})();

//网上商城鼠标hover
(function(){
    var oBox = document.getElementById('image_box');
    if(oBox) {
        var aSection = oBox.getElementsByTagName('section');
        var len = aSection.length;

        for (var i = 0; i < len; i++) {
            aSection[i].addEventListener('mouseover', function () {

                this.className = "active";

            });

            aSection[i].addEventListener('mouseout', function () {

                this.className = "";

            });
        }
    }

})();