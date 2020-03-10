<!DOCTYPE html>
<html lang="en">

<jsp:include page="head.jsp"></jsp:include>
<head>
    <title>book store</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="breadcrumb">
    <div class="container">
        <a class="breadcrumb-item" href="index.jsp">Home</a>
        <span class="breadcrumb-item active">Login</span>
    </div>
</div>
<div class="container">
    <div class="col-sm-6 col-sm-offset-3" >
        <div>
            <h1 style="text-align: center ;color: red">Please login here</h1>
        </div>

        <form action="Login" method="post">
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
            </div>
            <div class="form-group">
                <label for="pwd">Password:</label>
                <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password">
            </div>
            <button type="submit" class="btn btn-success form-control">Submit</button>
            <div>
                <br><p style = "color:red; font-size: 15px;text-align: center">Yet not registered ? To registration <a href="register.jsp">Click here</a></p>
            </div>
        </form>

    </div>
</div>

<jsp:include page="footer.jsp"></jsp:include>


</html>