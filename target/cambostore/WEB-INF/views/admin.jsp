<%--
  Created by IntelliJ IDEA.
  User: Ali
  Date: 10/17/2020
  Time: 9:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<!-- Services-->
<section class="page-section" id="services">
    <div class="container-fluid p-0">
        <h2 class="text-center mt-0">Administrator Page</h2>
        <p align="center">Howdy! This is an administrator page.</p>
        <hr class="divider my-4" /><br>
        <h3>
            <p align="center">
            <a href="<c:url value="/admin/productInventory"/> " class="btn btn-lg btn-success">
                Product Inventory
            </a>
            </p>
        </h3>
        <p align="center">Here you can view, check and modify the product inventory!</p>
    </div>

</section>
<%@include file="/WEB-INF/views/template/footer.jsp"%>