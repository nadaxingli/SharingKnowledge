'use strict';

angular.module('myApp').factory('contentCRUDService', ['$http', '$q', function($http, $q){
	return {
		getContentList: function() {
            //return $http.get('http://localhost:8081/SpringMVCAngularTest1/employee/')
            return $http({
            	method: "get",
            	url: "http://localhost:8081/SharingKnowledge/contentList"
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
    saveContent: function(contentxx){
	        return $http.post('http://localhost:8081/SharingKnowledge/saveContent', contentxx)
	                .then(
	                        function(response){
	                            return response.data;
	                        }, 
	                        function(errResponse){
	                            console.error('Error while creating user');
	                            return $q.reject(errResponse);
	                        }
	                );
	}
	}
}
])