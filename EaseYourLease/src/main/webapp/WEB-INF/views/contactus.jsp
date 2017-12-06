<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
        <img class="navbar-header-img" src="images/logo.jpeg" width="40" height="40">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">Ease Your Lease</a>
        </div>
        <ul class="nav navbar-nav">
            <li class="active"><a href=${'easeyourlease'}>Home</a></li>
            <li><a href=${'apartments'}>Apartment List</a></li>
            <li><a href=${'contactus'}>Contact US</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
        </ul>
    </div>
</nav>
<%--navbar end--%>

<div class="container">

    <div style="background-color: white"></div>
    <div class="row">
        <div class="col-sm-6">
            <h3>Contact US</h3>
        </div>
        <div class="col-sm-6">
            <h3 align="right"> Welcome ${userInfo.givenName} &nbsp;</h3>
        </div>


    </div>
    <hr>

    <%--<div class="row">--%>
        <%--<div class="col-sm-5">--%>
            <%--<div class="jumbotron">--%>
                <%--<p>--%>
                    <%--&lt;%&ndash;Living in a dream house is what a person works hard for and finding the same house which can&ndash;%&gt;--%>
                    <%--&lt;%&ndash;fulfill one&#180;s needs is not only hard but a tough job irrespective of how big or small city one&ndash;%&gt;--%>
                    <%--&lt;%&ndash;chooses to live in.</p><br>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;<p>Property owners, on the other hand struggle in finding a suitable manager who can keep track&ndash;%&gt;--%>
                    <%--&lt;%&ndash;of their existing properties and publicize them. Trusting strangers to lend a place is not easy and&ndash;%&gt;--%>
                    <%--&lt;%&ndash;requires a series of categories of background checks making the whole process hectic and&ndash;%&gt;--%>
                    <%--&lt;%&ndash;messy one.<br><br>&ndash;%&gt;--%>
                    <%--&lt;%&ndash;So, eradicating some of the difficulties mentioned, we have come up with an Enterprise based&ndash;%&gt;--%>
                    <%--&lt;%&ndash;Solution &ndash;%&gt;--%>
                    <%--<strong>EaseYourLease</strong>, is a Housing Property hosting platform where Property Managers can--%>
                    <%--more effectively market, manage and grow their business by hosting and posting about their--%>
                    <%--Housing Property which could be an Apartment or Student Housing or even a Community--%>
                    <%--Association.</p>--%>
            <%--</div>--%>
        <%--</div>--%>

        <%--<div class="col-sm-7">--%>
            <%--<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="2000">--%>
                <%--<!-- Indicators -->--%>
                <%--<ol class="carousel-indicators">--%>
                    <%--<li data-target="#myCarousel" data-slide-to="0" class="active"></li>--%>
                    <%--<li data-target="#myCarousel" data-slide-to="1"></li>--%>
                    <%--<li data-target="#myCarousel" data-slide-to="2"></li>--%>
                <%--</ol>--%>

                <%--<!-- Wrapper for slides -->--%>
                <%--<div class="carousel-inner">--%>
                    <%--<div class="item active">--%>
                        <%--<img src="images/slider-1.jpg" alt="Los Angeles" style="width:100%; height: 380px">--%>
                    <%--</div>--%>

                    <%--<div class="item">--%>
                        <%--<img src="images/slider-1.jpg" alt="Chicago" style="width:100%;height: 380px">--%>
                    <%--</div>--%>

                    <%--<div class="item">--%>
                        <%--<img src="images/slider-1.jpg" alt="New york" style="width:100%;height: 380px">--%>
                    <%--</div>--%>
                <%--</div>--%>

                <%--<!-- Left and right controls -->--%>
                <%--<a class="left carousel-control" href="#myCarousel" data-slide="prev">--%>
                    <%--<span class="glyphicon glyphicon-chevron-left"></span>--%>
                    <%--<span class="sr-only">Previous</span>--%>
                <%--</a>--%>
                <%--<a class="right carousel-control" href="#myCarousel" data-slide="next">--%>
                    <%--<span class="glyphicon glyphicon-chevron-right"></span>--%>
                    <%--<span class="sr-only">Next</span>--%>
                <%--</a>--%>
            <%--</div>--%>
        <%--</div>--%>

    <%--</div>--%>

    <div class="row">
        <div class="col-sm-12">
            <div class="jumbotron">
                <h3>Our Offices</h3>
                <%--<img src="images/image1.png" alt="" height="150px" width="350px" align="center">--%>
                <div class="row">
                    <div class="col-sm-4">
                        <ul class="list-1">
                            <li><a href="#">San Jose</a></li>
                            <li><a href="#">San Francisco</a></li>
                            <li><a href="#">Santa Clara</a></li>
                            <li><a href="#">Milpitas</a></li>
                            <li><a href="#">Mountain View</a></li>
                            <li><a href="#">Palo Alto</a></li>
                            <%--<li><a href="#">Palo Alto</a></li>--%>
                        </ul>
                    </div>
                    <div class="col-sm-4">
                        <img src="images/image1.png" alt="" height="150px" width="350px" align="center">
                        <%--<ul class="list-1 last">--%>
                        <%--&lt;%&ndash;<li><a href="#">Mountain View</a></li>&ndash;%&gt;--%>
                        <%--<li><a href="#">Santa Clara</a></li>--%>
                        <%--<li><a href="#">Milpitas</a></li>--%>
                        <%--</ul>--%>
                    </div>

                </div>
                <%--<div class="lists">--%>
            </div>
        </div>


        <%--<div class="col-sm-5">--%>
            <%--<div class="jumbotron">--%>
                <%--<h3>Search Tenant</h3>--%>
                <%--<div class="form-group">--%>
                    <%--<label>Enter Tenant ID</label>--%>
                    <%--<input type="text" placeholder="Enter tenant ID"/>--%>
                <%--</div>--%>
                <%--<div class="form-group">--%>
                    <%--<input type="button" class="btn-primary btn-group-sm" value="Submit" align="center">--%>
                <%--</div>--%>

                <%--<br>--%>
                <%--<br>--%>
                <%--<div align="center">--%>
                    <%--<a href=${'apartments'}>Go to Apartment List</a>--%>
                <%--</div>--%>

            <%--</div>--%>
        <%--</div>--%>

    </div>


</div>
<script src="/webjars/jquery/3.2.1/jquery.min.js"></script>
<script src="/webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>

</html>