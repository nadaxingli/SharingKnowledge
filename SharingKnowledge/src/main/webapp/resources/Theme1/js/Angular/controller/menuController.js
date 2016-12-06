'use strict';

angular.module('myApp').controller('menuController', ['$scope', 'menuService', '$routeParams', '$location', function($scope, menuService, $routeParams, $location) {
	 var self = this;
     //self.employee= new employeeService();
	 //self.menu = {menu_id:null,submenu_id:null,menu_name:''};
     self.menus=[];
     self.submenus = [];
     self.pShow =0;  self.eShow =0;  
     self.getMenuList = function(){
   	  //self.employees = employeeService.query();
    	menuService.getMenuList().then(function(response){
    		self.menus = response;
    	}, function(errResponse){
    		console.error('Error while fetching Currencies');
    	});
     };
     
     self.defaultContent = function(){
    	 $location.path("/Home");
     };
     
     self.getSubmenuContent = function(menu_id, menu_name, submenu_name){
    	// var pth = '/'+submenu_name;
    	 var xYZ = 10;
    	 $location.path('/'+menu_name+'/'+submenu_name);
    	 self.getSubmenuList(menu_id);
     }
     
     self.getSubmenuList = function(menu_id){
    	 menuService.getSubmenuList(menu_id).then(function(response){
    		self.submenus = response; 
    	 }, function(errResponse){
    		 console.error('Error get submenus');
    	 });
     }
     /*self.subMenuUrl = function(){
    	 var submeuId =1;
    	 $location.path('/xxxxx/content/'+submeuId);
     }*/
     self.showPContent = function(submenu_id){
    	 self.pShow = submenu_id;
     }
     self.showEContent = function(submenu_id){
    	 self.eShow = submenu_id;
     }
}
]);