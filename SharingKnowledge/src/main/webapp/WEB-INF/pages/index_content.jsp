<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/pages/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link
	href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/resources/css/dashboard.css" />"
	rel="stylesheet">
<title>Insert title here</title>
</head>
<body ng-app="myApp" ng-controller="menuController as menuCon">

<!-- Start -->

    <nav class="navbar navbar-default navbar-fixed-top" ng-init="menuCon.getMenuList();">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Project name</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-left">
          	<li class="dropdown" ng-repeat="m in menuCon.menus">
          	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">{{m.menu_name}}<span class="caret"></span></a>
          	<ul class="dropdown-menu">
          		<li ng-repeat="sm in m.subMenu"><a href="#">{{sm.menu_name}}</a></li>
          	</ul>
          	</li>
            <!-- <li  ng-repeat="m in menuCon.menus"><a href="#">{{m.menu_name}}</a></li> -->
          </ul>
          <form class="navbar-form navbar-right">
            <input type="text" class="form-control" placeholder="Search...">
          </form>
        </div>
      </div>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar" style="overflow: hidden;">
          <ul class="nav nav-sidebar">
            <li class="active"><a href="#">Mathematics <span class="sr-only">(current)</span></a></li>
            <li><a href="#">Physics</a></li>
            <li><a href="#">Chemistry</a></li>
            <li><a href="#">Biology</a></li>
            <li><a href="">Health</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li><a href="">English</a></li>
            <li><a href="">Psychology</a></li>
            <li><a href="">Philosophy</a></li>
            <li><a href="">History</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li><a href="">Technology</a></li>
            <li><a href="">Engineering</a></li>
            <li><a href="">Medicine</a></li>
            <li><a href="">Agriculture</a></li>
            <li><a href="">Industry</a></li>
          </ul>
          <ul class="nav nav-sidebar">
            <li><a href="">Politician</a></li>
            <li><a href="">Business</a></li>
            <li><a href="">Economics</a></li>
          </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">Dashboard</h1>

          <div class="row placeholders">
            <div class="col-xs-6 col-sm-3 placeholder">
              <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
              <h4>Label</h4>
              <span class="text-muted">Something else</span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
              <h4>Label</h4>
              <span class="text-muted">Something else</span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
              <h4>Label</h4>
              <span class="text-muted">Something else</span>
            </div>
            <div class="col-xs-6 col-sm-3 placeholder">
              <img src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" width="200" height="200" class="img-responsive" alt="Generic placeholder thumbnail">
              <h4>Label</h4>
              <span class="text-muted">Something else</span>
            </div>
      </div>
    </div>
	</div>
</div>
<!-- End -->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/resources/js/jquery-2.1.3.min.js" />"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular-resource.js"></script>
      <script src="<c:url value='/resources/js/Angular/app.js' />"></script>
      <script src="<c:url value='/resources/js/Angular/service/menuService.js' />"></script>
      <script src="<c:url value='/resources/js/Angular/controller/menuController.js' />"></script>
</body>
</html>