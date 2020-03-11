<%--
  Created by IntelliJ IDEA.
  User: abc
  Date: 3/11/2020
  Time: 7:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
<div class="col-sm-6 col-sm-offset-3" >
    <div>
        <h1 style="text-align: center ;color: red">FORGET PASSWORD ?</h1>
    </div>

    <form action="" method="post">
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
        </div>
        <div class="form-group">
            <label for="pwd">New Password:</label>
            <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password">

        </div>
        <div class="form-group">
            <label for="pwd">Repeat-Password:</label>
            <input type="password" class="form-control" id="pwd" placeholder="Enter Again password" name="re-password">
        </div>
        <button type="submit" class="btn btn-success form-control">Submit</button>
    </form>

</div>
</div>


</body>
</html>
