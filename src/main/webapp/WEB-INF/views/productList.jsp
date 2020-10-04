<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Ali
  Date: 10/4/2020
  Time: 8:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product list</title>
</head>
<body>
<table>
    <thead>
    <tr>
        <th>Name</th>
        <th>Category</th>
        <th>Price</th>
        <th>Description</th>
        <th>Status</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${products}" var="product">
        <tr>
            <td>${product.productName}</td>
            <td>${product.productCategory}</td>
            <td>${product.productPrice}</td>
            <td>${product.productDescription}</td>
            <td>${product.productStatus}</td>
        </tr>
    </c:forEach>

    </tbody>
</table>

</body>
</html>
