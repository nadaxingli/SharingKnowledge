<%@tag description="Overall Page template" pageEncoding="UTF-8"%>
<%@attribute name="header" fragment="true" %>
<%@attribute name="footer" fragment="true" %>
<%@ include file="/WEB-INF/pages/includes.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link
	href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<link
	href="<c:url value="/resources/css/dashboard.css" />"
	rel="stylesheet">
<title>Sharing Knowledge</title>
<style type="text/css">
.img-menuLink{
background-color:linen;
border-radius: 50%;
height: 80px;
width: 110px;
/*align-items: center;
vertical-align: middle;*/
font: bold medium cursive;
padding: 23px;
/*padding-bottom: 20px;*/
border:0px;
/*border-color:linen;*/
color: maroon;
/*display: inline;*/
/*display:block;*/
text-align: center;
}
.img-menuLink:HOVER {
	background-color: #A0A0A0;
}
.myinput{
display:block;
border-radius: 5px;
height: 34px;
padding: 6px 12px;
border: 1px solid #ccc;

}
.testBlock{
height: 50px;
width: 150px;
color: maroon;
background-color: linen;
text-align: center;
vertical-align: middle;
display: inline-block;
padding: 20px 10px 20px 10px;
}
.testBlock:HOVER {
	background-color: silver;
}
</style>
</head>
<body ng-app="myApp" ng-controller="menuController as menuCon">

<div id="body">
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
          	<a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">{{m.menu_name}}<span class="caret"></span></a>
          	<ul class="dropdown-menu">
          		<li ng-repeat="sm in m.subMenu" ng-click="menuCon.getSubmenuContent(sm.menu_id, m.menu_name, sm.menu_name)"><a href="">{{sm.menu_name}}</a></li>
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


<jsp:doBody/>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
<script src="<c:url value="/resources/js/jquery-2.1.3.min.js" />"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular-resource.js"></script>
<script src="<c:url value='/resources/js/Angular/app.js' />"></script>
<script src="<c:url value='/resources/js/Angular/angular-route.js' />"></script>
<script src="<c:url value='/resources/js/Angular/angular-configurations.js' />"></script>
<script src="<c:url value='/resources/js/Angular/service/menuService.js' />"></script>
<script src="<c:url value='/resources/js/Angular/controller/menuController.js' />"></script>
<script src="<c:url value='/resources/js/Angular/service/contentCRUDService.js' />"></script>
<script src="<c:url value='/resources/js/Angular/controller/contentCRUDController.js' />"></script>
</body>
</html>
