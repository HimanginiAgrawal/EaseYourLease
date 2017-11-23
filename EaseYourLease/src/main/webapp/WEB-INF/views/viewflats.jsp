<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>--%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>EaseYourLease</title>
    <link rel="stylesheet" href="/webjars/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link rel="stylesheet" href="style/easeyourlease.css"/>
</head>

<body>
<%--navbar begin--%>

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <%--<img class="navbar-header" src="/images/logo.png" width="30" height="30">--%>
        <div class="navbar-header">
            <a class="navbar-brand" href="#">Ease Your Lease</a>
        </div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="#">My Apartments</a></li>
            <li><a href="#">Rent Flat</a></li>
            <li><a href="#">My Tenants</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
        </ul>
    </div>
</nav>
<%--navbar end--%>

<div class="container">
    <div class="row">
        <div class="col-sm-8">
            <h1>Flats List for ${apartmentName}</h1>
        </div>
        <div class="col-sm-3">
            <c:set var="addflatLinks" value="${'/addflat?apartmentid='}${apartmentid}" />
            <button class="btn btn-primary btn-lg" type="submit" onclick="location.href='${addflatLinks}'">Add new Flat</button>
        </div>
    </div>
    <br>


    <table class="table table-hover">
        <thead>
        <tr>
            <th>Flat number</th>
            <th>Details</th>
            <th>Type</th>
            <th>Price</th>
            <th>Availability</th>
            <th>Actions</th>

        </tr>
        </thead>
        <tbody>
        <c:forEach items="${flats}" var="flat" >
            <c:set var="flatLinks" value="${'/rentapartment?flatid='}${flat.id}" />

            <tr>
                <c:choose>
                <c:when test = "${flat.availability=='false'}">
                <td>
                    <a href=${'viewTenant?flatid='}${flat.id}>
                            ${flat.flatName}
                    </a></td>
                    </c:when>
                <c:when test = "${flat.availability=='true'}">
                    <td>

                                ${flat.flatName}
                        </td>
                </c:when>
                    <c:otherwise>
                        No comment sir...
                    </c:otherwise>
                </c:choose>

                        <%--${flat.availability=='true' ? 'disabled="disabled"' : ''}--%>
                    <%--<a href=${'viewTenant?flatid='}${flat.id}>--%>
                       <%--${flat.flatName}--%>
                <%--</a></td>--%>
                <td>${flat.details}</td>
                <td>${flat.type}</td>
                <td>${flat.price}</td>
                <td>${flat.availability=='false'?'Not Available' : 'Available'}</td>
                <td><button type="submit" class="btn-primary"  onclick="location.href='${flatLinks}'"
                ${flat.availability=='false' ? 'disabled="disabled"' : ''}>Rent this Appartment</button></td>

            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>




<script src="/webjars/jquery/3.1.1/jquery.min.js"></script>
<script src="/webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>

</html>