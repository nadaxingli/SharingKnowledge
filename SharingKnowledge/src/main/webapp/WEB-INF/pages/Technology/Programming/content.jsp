<div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar" style="overflow: hidden;">
          <ul class="nav nav-sidebar">
            <li ng-repeat="sm in menuCon.submenus"><a href="" ng-click="menuCon.showPContent(sm.submenu_id);">{{sm.submenu_name}}</a></li>
          </ul>
        </div>
    	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
    		<!-- <div ng-include="'http://localhost:8081/SharingKnowledge/content/1'"></div> -->  
    		<div ng-if="menuCon.pShow==0">
    			<h1 class="page-header">^^^^^==(-.-)==^^^^^</h1>
				<h2>Hello, welcome to our Main Programming Page.</h2>  
    		</div>
			<div ng-if="menuCon.pShow==1" ng-include="'http://localhost:8081/SharingKnowledge/programming/web'"></div>
			<div ng-if="menuCon.pShow==2" ng-include="'http://localhost:8081/SharingKnowledge/programming/mobile'"></div>
			<div ng-if="menuCon.pShow==3" ng-include="'http://localhost:8081/SharingKnowledge/programming/windows'"></div>
		</div>
    </div>
	</div>
