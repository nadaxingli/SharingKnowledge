'use strict';

angular.module('myApp').controller('contentCRUDController', ['$scope', 'contentCRUDService', '$location', function($scope, contentCRUDService, $location) {
	$scope.contentList = [];
	$scope.isAddNew = false;
	$scope.contentxx = {};
	$scope.getContentList = function(){
		contentCRUDService.getContentList().then(function(response){
	    		$scope.contentList = response;
	    	}, function(errResponse){
	    		console.error('Error while fetching Currencies');
	    	});
	     };
	$scope.showAddForm = function(){
		$scope.isAddNew = true;
	}
	$scope.closeAddForm = function(){
		$scope.isAddNew = false;
	}
	$scope.saveContent = function(){
		contentCRUDService.saveContent($scope.contentxx).then(function(response){
			if(response!=null){
				$scope.getContentList();
			}
			else{
				alert('can not save');
			}
		})
	}
}
]);