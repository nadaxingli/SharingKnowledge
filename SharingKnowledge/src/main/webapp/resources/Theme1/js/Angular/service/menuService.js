'use strict';

angular.module('myApp').factory('menuService', ['$http', '$q', function($http, $q){
	 
    return {
    	getMenuList: function() {
            //return $http.get('http://localhost:8081/SpringMVCAngularTest1/employee/')
            return $http({
            	method: "get",
            	url: "http://localhost:8081/SharingKnowledge/menu"
            })
                    .then(
                            function(response){
                                return response.data;
                            }, 
                            function(errResponse){
                                console.error('Error while fetching users');
                                return $q.reject(errResponse);
                            }
                    );
    },
    
    getSubmenuList: function(menu_id){
    	return $http({
    		method: "get", 
    		url: "http://localhost:8081/SharingKnowledge/submenu/"+menu_id
    	})
    	.then(
    			function(response){
    				return response.data;
    			}, function(errResponse){
    				console.error('Error while fetching users');
    			});
    			
    }
}

}]);