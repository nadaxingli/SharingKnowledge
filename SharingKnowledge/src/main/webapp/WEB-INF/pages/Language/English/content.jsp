<div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar" style="overflow: hidden;">
          <ul class="nav nav-sidebar">
            <li ng-repeat="sm in menuCon.submenus"><a href="" ng-click="menuCon.showEContent(sm.submenu_id);">{{sm.submenu_name}}</a></li>
          </ul>
        </div>
    	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
    		<!-- <div ng-include="'http://localhost:8081/SharingKnowledge/content/1'"></div> -->  
    		<div ng-if="menuCon.eShow==0">
    			<h1 class="page-header">^^^^^==(-.-)==^^^^^</h1>
				<h2>Hello, welcome to our Main English Page.</h2>  
    		</div>
			<div ng-if="menuCon.eShow==4" ng-include="'http://localhost:8081/SharingKnowledge/english/reading'"></div>
			<div ng-if="menuCon.eShow==5" ng-include="'http://localhost:8081/SharingKnowledge/english/listening'"></div>
			<div ng-if="menuCon.eShow==6" ng-include="'http://localhost:8081/SharingKnowledge/english/speaking'"></div>
			<div ng-if="menuCon.eShow==7" ng-include="'http://localhost:8081/SharingKnowledge/english/grammar'"></div>
		</div>
    </div>
	</div>
