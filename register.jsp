<!DOCTYPE html>
<html lang="en">
<jsp:include page="head.jsp"></jsp:include>
<head>
    <meta charset="UTF-8">
    <title>Book Store</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="breadcrumb">
    <div class="container">
        <a class="breadcrumb-item" href="index.jsp">Home</a>
        <span class="breadcrumb-item active">Register</span>
    </div>
</div>
<div class="container">
    <div class="col-sm-6 col-sm-offset-3">
        <div style = "color: red">
            <h2 style="text-align: center;">Please registration  here</h2>
        </div>
        <form action="register" method="post">
            <div class="form-group">
                <label>Username :</label>
                <input type="text" class="form-control" id="email" placeholder="Enter username" name="username">
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
                <div>
                    <div class="form-group">
                        <label>Address :</label>
                        <input type="text" class="form-control" id="email" placeholder="Enter Your Address" name="address">
                    </div>
                    <div class="form-group">
                        <label for="pwd">Password:</label>
                        <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password">

                    </div>
                    <div class="form-group">
                        <label for="pwd">Repet-Password:</label>
                        <input type="password" class="form-control" id="pwd" placeholder="Enter Again password" name="re-password">
                    </div>
                    <button type="submit" class="btn btn-success form-control ">Register</button>
                    <br><p style = "color:red; font-size: 15px;text-align: center">
                    Yet  registered <a href="login.jsp">Login click hear</a></p>
                </div>
            </div>
        </form>

    </div>
    </div>
<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>