
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>book store</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <div class="col-sm-6 col-sm-offset-3" >
        <div>
            <h1 style="text-align: center ;color: red">Please get verification code..</h1>
        </div>

        <form action="verify" method="post">

            <div class="form-group">
                <label for="text"><h2>Code</h2></label>
                <input type="text" class="form-control" id="text" placeholder="Enter email verification code" name="code">
            </div>
            <button type="submit" class="btn btn-success form-control">Submit</button>
        </form>

     </div>
</div>
</body>
</html>
