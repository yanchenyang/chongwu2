<%--
  Created by IntelliJ IDEA.
  User: avisitor
  Date: 2018/3/14
  Time: 18:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>登陆页面</title>
    <link href="styless.css" rel="stylesheet">
  </head>
  <body>
    <div>
      <div id="header">
        <h1>社区宠物医院</h1>
      </div>
      <div id="main">
        <from action="LoginServlet" method="post">
          <table>
            <tr>
              <td>姓名</td>
              <td><input type="username"/></td>
            </tr>
            <tr>
              <td>密码</td>
              <td><input type="password" name="pwd"/></td>
            </tr>
            <tr>
              <td>验证码</td>
              <td><input type="usercode"/></td>
            </tr>
            <tr>
              <td>点击刷新</td>
              <td><img src="CheckCode" onclick="this.src='CheckCode?rand='+Math.random()"/></td>
            </tr>
            <tr>
              <td></td>
              <td><input type="submit" value="登陆"/>
              <input type="reset" value="重置"/></td>
            </tr>
          </table>
        </from>
        <h4>
          <%=request.getAttribute("msg")==null?"":request.getAttribute("msg")%>
          <%=request.getParameter("para")==null?"":request.getParameter("para")%>
        </h4>
      </div>
      <div id="footer">

      </div>
    </div>
  </body>
</html>
