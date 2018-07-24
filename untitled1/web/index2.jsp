<%--
  Created by IntelliJ IDEA.
  User: leishuai
  Date: 2018/7/16
  Time: 13:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
  <head>
    <title>$Title$</title>
    <script>
        (function () {
            var xmlHttp = new XMLHttpRequest();
            var xmlHttp2=new XMLHttpRequest();
            xmlHttp2.open("post","index3.jsp",true);
            xmlHttp2.setRequestHeader("Content-Type","application/x-www-form-urlencoded;charset=UTF-8");
//            xmlHttp2.setRequestHeader("Content-Type","application/x-www-form-urlencoded;charset=UTF-8");
            xmlHttp2.send("name=1");
            xmlHttp2.onreadystatechange=function () {
                if(xmlHttp2.status==200&&xmlHttp2.readyState==4){
                    alert(xmlHttp2.responseText);
                }
            }

//            xmlHttp.open("POST","index3.jsp?name2=1",true);
//            xmlHttp.setRequestHeader("Content-Type","application/x-www-form-urlencoded;charset=UTF-8");
////            xmlHttp.send("name=雷帅");
//            xmlHttp.send("name2=雷帅");
//            xmlHttp.onreadystatechange=function(){
//                if(xmlHttp.status==200&&xmlHttp.readyState==4){
//                    alert(xmlHttp.responseText);
//                    //XMLHttpRequest open("post","yemian"); status 200 404 readyState
//                    //XMLHttpRequest.setRequestHeader("Context_Type","application/x-www-form-urlencoded;charset=utf-8");
//                }
//            }
        })();
    </script>
  </head>
  <body>
  $END$123hkjhkhgjkhkjhjgjhkkkkk
  </body>
</html>
