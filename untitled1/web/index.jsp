<%--
  Created by IntelliJ IDEA.
  User: leishuai
  Date: 2018/7/16
  Time: 16:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Title</title>
  <script>
      var td=document.getElementsByTagName("td");
      var focus=8;   //焦点所在的td的name
      var times=100;
      var bushu=0;

      function daluan(){
          var rand=parseInt(Math.random()*4); //方向
          var temp=-1,temp2;  //temp目标。 temp2为中转容器

          if(rand==0) temp=focus-3;
          if(rand==1&&focus%3<2) temp=focus+1;
          if(rand==2) temp=focus+3;
          if(rand==3&&focus%3>0) temp=focus-1;
          if(temp>=0&&temp<=8)
          {
              temp2=td[focus].innerHTML;
              td[focus].innerHTML=td[temp].innerHTML;
              td[temp].innerHTML=temp2;

              td[temp].style.backgroundColor="white";
              td[focus].style.backgroundColor="grey";
              focus=temp;
          }
      }
      function init() {
          //5408b45f.nat123.cc:44380
          focus=8;   //焦点所在的td的name
          times=100;
          bushu=0;
          for(var i=1;i<10;i++)
          {
              td[i-1].innerHTML=""+i;
              td[i-1].onclick=click2;
              td[i-1].name=''+i-1;
          }

          td[8].style.backgroundColor="white";
          td[8].innerHTML="";
      }

      function click2(e) {
          var source=e.srcElement;
          var name=source.name;
//            alert("name="+name+"focus="+focus);
          e=name;
          var rand=-1;
          if(e<=8&&e-focus==3)
              rand=2;
          if(e<=8&&e-focus==1)
              rand=1;

          if(e>=0&&e-focus==-1)
              rand=3;
          if(e>=0&&e-focus==-3)
              rand=0;

//            alert("rand="+rand);
          if(rand==-1) return;
          var temp=-1,temp2;

          if(rand==0) temp=focus-3;
          if(rand==1&&focus%3<2) temp=focus+1;
          if(rand==2) temp=focus+3;
          if(rand==3&&focus%3>0) temp=focus-1;

          if(temp>=0&&temp<=8)
          {
              bushu++;
              temp2=td[focus].innerHTML;
              td[focus].innerHTML=td[temp].innerHTML;
              td[temp].innerHTML=temp2;

              td[temp].style.backgroundColor="white";
              td[focus].style.backgroundColor="grey";
              focus=temp;
              jiance();
          }
      }
      function jiance() {
          var success=true;//检测结果
          for(var i=0;i<8;i++)
          {
              if(td[i].name!=td[i].innerHTML-1)
              {
                  success=false;
//                    alert(i+"false");
              }
          }
          if(success==true)
          {
              setTimeout(alert("游戏结束，您一共使用了"+bushu+"步"),10000);
              start();
          }


      }
      onload=start;
      function start (nandu) {
          init();
//         setInterval(daluan,100);
          var i=3330;
          while(i-->0)
              daluan();
      }
  </script>
  <style>
    td{
      background-color: grey;
      text-align: center;
      font-size: 3em;
    }
  </style>
</head>
<body>
<!--<input type="button" onclick="click1()" value="12131"/>-->

<table width="500px" height="600px" border="1" style="margin: auto" id="table">
  <tr>
    <td></td>
    <td></td>
    <td></td>
  </tr> <tr>
  <td></td>
  <td></td>
  <td></td>
</tr> <tr>
  <td></td>
  <td></td>
  <td></td>
</tr>
</table>
<!--<input type="button" onclick=""><input > -->

</body>
</html>
