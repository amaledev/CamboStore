<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Ali
  Date: 10/17/2020
  Time: 5:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<!-- Services-->
<section class="page-section" id="services">
    <div align="center" class="container">
        <div class="col-lg-8 col-lg-offset-2">
            <h2>Add Product Page</h2>
            <p>Hey! Please fill out the below information to add a product.</p>
            <hr class="divider my-4" />
        </div>
    </div>

    <div class="container col-md-6 col-md-offset-3">
        <form:form action="#" method="post" modelAttribute="product">
            <div class="form-group">
                <label for="name">Name</label>
                <form:input path="productName" id="name" cssClass="form-control"/>
            </div>

            <div class="form-group">
                <label for="category">Category</label>
                <label class="form-check-inline">
                    <form:radiobutton path="productCategory" id="category" value="iPhone" />iPhone
                </label>
                <label class="form-check-inline">
                    <form:radiobutton path="productCategory" id="category" value="samsung" />Samsung
                </label>
                <label class="form-check-inline">
                    <form:radiobutton path="productCategory" id="category" value="sony" />Sony
                </label>
                <label class="form-check-inline">
                    <form:radiobutton path="productCategory" id="category" value="accessory" />Accessory
                </label>
            </div>

            <div class="form-group">
                <label for="description">Description</label>
                <form:textarea path="productDescription" id="description" cssClass="form-control"/>
            </div>

            <div class="form-group">
                <label for="price">Price</label>
                <form:textarea path="productPrice" id="price" cssClass="form-control"/>
            </div>

            <div class="form-group">
                <label for="condition">Condition</label>
                <label class="form-check-inline">
                    <form:radiobutton path="productCondition" id="condition" value="new" />New Arrival
                </label>
                <label class="form-check-inline">
                    <form:radiobutton path="productCondition" id="condition" value="used" />Used
                </label>

            </div>

            <div class="form-group">
                <label for="status">Status</label>
                <label class="form-check-inline">
                    <form:radiobutton path="productStatus" id="status" value="active" />Active
                </label>
                <label class="form-check-inline">
                    <form:radiobutton path="productStatus" id="status" value="inactive" />Inactive
                </label>

            </div>

            <div class="form-group">
                <label for="unitInStock">Price</label>
                <form:textarea path="unitInStock" id="unitInStock" cssClass="form-control"/>
            </div>

            <div class="form-group">
                <label for="manufacturer">Manufacturer</label>
                <form:textarea path="productManufacturer" id="manufacturer" cssClass="form-control"/>
            </div><br>
            <div class="col-lg-8 col-lg-offset-2 text-center">
                <input type="submit" value="submit" class="btn btn-success"/>
                <a href="<c:url value="/admin/productInventory"/> " class="btn btn-primary">Cancel</a>
            </div>
        </form:form>
    </div>

</section>
<%@include file="/WEB-INF/views/template/footer.jsp"%>
