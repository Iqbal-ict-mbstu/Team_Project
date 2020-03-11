<%--
  Created by IntelliJ IDEA.
  User: abc
  Date: 3/11/2020
  Time: 6:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">

    <title>Comfirm Delete</title>

</head>

<body>

<h1>Are you sure you want to delete this product? </h1>

<p>code: ${product.code}</p>

<p>Product Description: ${product.description}</p>

<p>Product Price: ${product.getPriceFormat()}</p>

<input type="submit" name="yes" value="yes">

<input type="submit" name="no" value="no">

<a href="/products/delete?code=${product.code}&delete=yes">Yes</a>

<a href="product.jsp">No</a>


</body>
</html>
