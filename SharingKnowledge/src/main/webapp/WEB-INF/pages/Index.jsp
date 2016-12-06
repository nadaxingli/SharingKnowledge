<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ include file="/WEB-INF/pages/includes.jsp"%>
<html>
<t:layout>
<jsp:body>
<div>
    <div class="slide-to-left" ng-view ng-init="menuCon.defaultContent()">
    </div> 
    <!-- <h1>Welcome again!!!</h1> -->
</div>
</jsp:body>
</t:layout>

</html>