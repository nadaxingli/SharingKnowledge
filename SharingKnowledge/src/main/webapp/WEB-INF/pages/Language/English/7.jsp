<h1 class="page-header">Dashboard</h1>
<h2>Hello, welcome to our Grammar Page.</h2>  
<div ng-controller="contentCRUDController" ng-init="getContentList()">
<div class="row">
<div class="col-sm-5"><input class="myinput" placeholder="search by title" ng-model="searchTxt"/>
<button class="btn btn-default"><span class="glyphicon glyphicon-plus" aria-hidden="true" ng-click="showAddForm()"></span></button>
</div>
<div class="col-sm-2" style="text-align: left"></div>
</div>
<br>
<div ng-show="isAddNew" class="panel panel-default">
<div class="panel-heading">Add new content</div>
<div class="panel-body">
	<div class="row">
		<div class="col-sm-2">Title</div>
		<div class="col-sm-4"><input class="form-control" ng-model="contentxx.title" /></div>
	</div>
	<div class="row">
		<div class="col-sm-2">File Link</div>
		<div class="col-sm-4"><input class="form-control" ng-model="contentxx.fileLink"/></div>
	</div>
	<div class="row">
		<div class="col-sm-4">
			<button class="btn btn-info" ng-click="saveContent()">Save</button>
			<button class="btn btn-danger" ng-click="closeAddForm()">Close</button>
		</div>
	</div>
</div>
</div>
<table class="table">
<tr>
<th>
No
</th>
<th>
Title
</th>
<th>
Link
</th>
<th>
Submenu
</th>
<th>
Edit/Delete
</th>
</tr>
<tr ng-repeat="content in contentList | filter:searchTxt">
<td>{{content.contentId}}</td>
<td>{{content.title}}</td>
<td><span ng-bind="content.fileLink"></span></td>
<td>{{content.submenuId}}</td>
<td>
<button class="btn btn-info"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span></button>
<button class="btn btn-danger"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
</td>
</tr>
</table>
</div>