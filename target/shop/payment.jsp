<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<div id="orderid"></div>
<br>请扫码支付



<img id="img"/>
<div id="resultInfo">等待支付中。。。</div>
<script>
    var thisURL=document.URL;
    var values=thisURL.split('?')[1];
    var orderidvalue=values.split("&")[0].split("=")[1];
    var urlvalue=values.split("&")[1].split("=")[1];
    //URLENCODE   URLDECODE
    //url?username=zhangsan%56password%49123456

    var orderid=unescape(orderidvalue);
    urlvalue=unescape(urlvalue);

    document.getElementById("orderid").innerHTML=orderid;
    document.getElementById("img").src="image?url="+urlvalue;



<!-- 轮询 -->

 function getXMLHTTPRequest(){
     var xmlhttp;
     if(window.XMLHttpRequest){
         xmlhttp=new XMLHttpRequest();
     }else{
         xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
     }
     return xmlhttp;
 }
 function getorderstate(){
     var xmlhttp=getXMLHTTPRequest();
     xmlhttp.onreadystatechange=function(){
            var str=xmlhttp.responseText;

            if(str=="支付成功"){
                document.getElementById("resultInfo").innerHTML=str+"。";
            }else{
                document.getElementById("resultInfo").innerHTML=str;
                setTimeout("getorderstate();",10000);
            }
     };
     var url="getorderstate";
     xmlhttp.open("post",url,true);
     xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
     xmlhttp.send("orderid="+orderid);
    //alert(orderid);
 }
 setTimeout("getorderstate();",10000);



</script>

</body>
</html>