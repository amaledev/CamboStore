<%--
  Created by IntelliJ IDEA.
  User: Ali
  Date: 10/17/2020
  Time: 10:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<!-- Services-->
<section class="page-section" id="services">
    <div class="container-fluid p-0">
        <h2 class="text-center mt-0">Product Inventory Page</h2>
        <p align="center">Here! This is the product inventory page</p>
        <hr class="divider my-4" />

    </div>
    <div class="container">
        <table class="table table-striped table-hover table-bordered">

            <thead>
            <tr>
                <th>Photo Thumb</th>
                <th>Product Name</th>
                <th>Category</th>
                <th>Condition</th>
                <th>Price</th>
                <th></th>
            </tr>
            </thead>
            <c:forEach items="${products}" var="product">
                <tr><td><img src="#" alt="image"/></td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productCondition}</td>
                    <td>${product.productPrice} USD</td>
                    <td>
                        <a href="<c:url value="/viewProduct/${product.productId}"/> ">

                            <i class="fas fa-info-circle"></i>
                        </a>
                    </td>
                </tr>

            </c:forEach>
        </table>
        <a href="<c:url value="/admin/productInventory/addProduct"/>" class="btn btn-success">
            Add Product
        </a>
    </div>
</section>

<%@include file="/WEB-INF/views/template/footer.jsp"%>