<%--
  Created by IntelliJ IDEA.
  User: abc
  Date: 3/11/2020
  Time: 5:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<body class="page1">
<%
    String u="", Login="Log In";
    try{
        u=session.getAttribute("username").toString();
        if(u==null){
            Login="Log In";
        }
        else{
            Login="Log Out";
        }
    }
    catch(Exception e){

    }
%>
<div class="extra">
    <!--==============================banner================================-->
    <header>
        <div class="main">
            <div class="bg-1">
                <div class="box">
                    <h1><a href="index.jsp">Verve</a></h1>
                    <div class="container-1">
                        <form action="Search" method="post">
                            <span class="icon"><i class="fa fa-search"></i></span>
                            <input type="search" id="search" name="search" placeholder="Search"/>
                        </form>
                    </div>
                </div>
            </div>

</body>
</html>
