<#assign pageName="actWeixinShare_201411">
<!DOCTYPE html>
<!-- 页面head -->
<html>
<head>
  <meta http-equiv="content-type" content="text/html;charset=utf-8"/>
  <title></title>
  <meta name="author" content="Netease"/>
  <meta name="version" content="1.0"/>
  <meta name="keywords" content=""/>
  <meta name="description" content=""/>
  <meta http-equiv="Pragma" content="no-cache"/>  
  <meta http-equiv="Cache-Control" content="no-cache" max-age="0"/>  
  <meta http-equiv="Expires" content="0"/>
  <meta name="viewport" content="initial-scale=1, maximum-scale=2, minimum-scale=1, user-scalable=no"/>
  <meta name="robots" content="all"/>
  <meta property="wb:webmaster" content="766092f2bbf0c80d" />
  <meta property="qc:admins" content="22061604124161636375" />
  <meta name="baidu-site-verification" content="BYFmFBILbh" />
  <!-- @NOPARSE -->
  <script type="text/javascript">
      window.gaTrackPageview = '_trackPageview';
      window.gaTrackEvent = '_trackEvent';
      window.gaqStr = '_gaq';
      ﻿<#if statisticsSwitch?exists && statisticsSwitch?string("1", "0") == "1">
        window._gaq = [];
        window._gaq.push(['_setAccount', 'UA-35176345-2'],['_setLocalGifPath', '/UA-35176345-2/__utm.gif'],['_setLocalRemoteServerMode']);
        window._gaq.push(['_trackPageview']);
        
        (function() {
          var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
          ga.src = 'http://wr.da.netease.com/ga.js';
          var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
         })();
       </#if>
        
        document.addEventListener('WeixinJSBridgeReady', function onBridgeReady() {
                WeixinJSBridge.call('hideToolbar');
                
                /** 发送给好友 **/
                WeixinJSBridge.on('menu:share:appmessage', function(argv){
                    if(!!shareFriend){shareFriend('sendAppMessage');}
                    });
                
                /** 分享到朋友圈 **/
                WeixinJSBridge.on('menu:share:timeline', function(argv){
                    if(!!shareFriend){shareFriend('shareTimeline');}
                    });
                    
                 /** 分享到微博 **/
                WeixinJSBridge.on('menu:share:weibo', function(argv){
                    if(!!shareWeibo){shareWeibo();}
                });
        }, false); 
   </script>
   <!-- /@NOPARSE -->
</head>
<!-- @STYLE -->
<style>

@media screen and (max-width: 749px) {
  @viewport {
    width: device-width;
  }
}
@font-face {
  font-family: 'icomoon';
  src: url("/res/fonts/icomoon.ttf") format("truetype"), url("/res/fonts/icomoon.woff") format("woff");
  font-weight: normal;
  font-style: normal;
}
/* reset */
*[hidefocus] {
  outline: none;
}

body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, pre, form, fieldset, input, textarea, p, blockquote, th, td {
  padding: 0;
  margin: 0;
}

fieldset, img, html, body, iframe {
  border: 0;
}

table {
  border-collapse: collapse;
  border-spacing: 0;
}

li {
  list-style: none;
}

caption, th {
  font-weight: normal;
  font-style: normal;
  text-align: left;
}

em {
  font-style: normal;
}

strong {
  font-weight: bold;
}

body, textarea, select, input {
  font-family: tahoma,"宋体",arial,helvetica,sans-serif;
  color: #444;
  outline: none;
  border: 0;
}

textarea {
  resize: none;
}

input {
  vertical-align: middle;
  margin: 0px;
}

body {
  background-color: #fff;
}

h1, h2, h3, h4, h5, h6 {
  font-weight: normal;
  font-family: "微软雅黑";
}

a, button {
  cursor: pointer;
}

a {
  text-decoration: none;
  color: #000;
}

a:hover {
  color: #10ae58;
  /*hover color*/
}

html, body {
  width: 100%;
  height: 100%;
}

html {
  overflow: auto;
}

body {
  text-align: left;
  width: 100%;
}

/* func */
.f-cb:after, .f-cbli li:after {
  display: block;
  clear: both;
  visibility: hidden;
  height: 0;
  overflow: hidden;
  content: ".";
}

.f-cb, .f-cbli li {
  zoom: 1;
}

.f-thide {
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}

.f-hide {
  text-indent: -9999px;
  overflow: hidden;
}

.f-ib {
  display: inline-block;
  zoom: 1;
  *display: inline;
}

.f-dn {
  display: none;
}

.f-db {
  display: block;
}

.f-pr {
  position: relative;
}

.f-pf {
  position: fixed;
}

.f-af {
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
}

.f-fl {
  float: left;
}

.f-fr {
  float: right;
}

/** 通用样式 **/
@media screen and (max-resolution: 160dpi) {
  body {
    font-size: 14px;
  }
}
@media screen and (min-resolution: 320dpi) {
  body {
    font-size: 12px;
  }
}

.top,.bottom{width:100%;font-size:0;}
.top img,.bottom img{width:100%;}
body{background:#222d3a;}
</style>
<body>
    <div class="top">
        <img src="/res/images/activities/111invite/share_top.png"/>
    </div>
    <div class="bottom">
        <img src="/res/images/activities/111invite/share_bottom.jpg"/>
    </div>
    <!-- @NOPARSE -->
    <script>
        window.inviteCode = "${inviteCode?default('')?html}";
        window.inviteUrl = 'http://study.163.com/act/superIT.htm';
        
        if(!!inviteCode){
            window.inviteUrl += '?inviteCode='+inviteCode;
        }
        
        
        function shareFriend(_eventName) {
            WeixinJSBridge.invoke(_eventName,{
                                    "appid": 'wx9920353d8725a305',
                                    "img_url": "http://img0.ph.126.net/pQWa9B6x92Ocw_Fgt7hmNw==/6619119372839949465.png",
                                    "img_width": "320",
                                    "img_height": "320",
                                    "link": inviteUrl,
                                    "desc": "你已获得2张电影券，来云课堂选课领取，还能拿大奖！",
                                    "title": "你已获得2张电影券，来云课堂选课领取，还能拿大奖！"
                                    }, function(res) {
                                    });
        };
        function shareWeibo(){
            WeixinJSBridge.invoke('shareWeibo',{
                                    "content": "你已获得2张电影券，来云课堂选课领取，还能拿大奖！",
                                    "url": inviteUrl,
                                    }, function(res) {
                                    });
        }
        </script>
    <!-- /@NOPARSE -->  
</body>
</html>