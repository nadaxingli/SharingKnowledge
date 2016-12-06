'use strict';

angular.module('myApp', ['ngRoute']).config(['$routeProvider', '$locationProvider', '$routeParamsProvider', function ($routeProvider, $locationProvider, $routeParamsProvider) {
    $routeProvider.when('/Home', {
        templateUrl: "http://localhost:8081/SharingKnowledge/content",
        controller: "menuController"
    }).when('/:menu_name/:submenu_name', {
    	
        templateUrl: function(params){
        	if(params.menu_name !=null)
        		return "http://localhost:8081/SharingKnowledge/submenucontent/"+params.menu_name+'&'+params.submenu_name;
        	else
        		return null
        }
        	,
        //dataType: 'jsonp',
        controller: "menuController",
    })/*.when('/Technology/:xYZ', {
    	templateUrl: function(params){
        	if(params.xYZ !=null)
        		return "http://localhost:8081/SharingKnowledge/submenucontent/"+params.xYZ;
        	else
        		return null
        },
        controller: "menuController"
    })*/
    .when('/xxxxx/content/:id', {
    	
        templateUrl: function(params){
        	if(params.menu_name !=null)
        		return "http://localhost:8081/SharingKnowledge/content/"+params.id;
        	else
        		return null
        }
        	,
        //dataType: 'jsonp',
        controller: "menuController",
    })
}]);


