// Application module
var crudApp = angular.module('crudApp',[]);
crudApp.controller("DbController",['$scope','$http', function($scope,$http){
 
 
getcategory();
function getcategory(){
// Sending request to EmpDetails.php files 
$http.post('databaseFiles/categoryDetails.php').success(function(data){
// Stored the returned data into scope 
$scope.categorydetails = data;
}); 
}

getvideos();
function getvideos(){
// Sending request to EmpDetails.php files 
$http.post('databaseFiles/videoDetails.php').success(function(data){
// Stored the returned data into scope 
$scope.videodetails = data;
$scope.$watch("images", function (newValue, oldValue) {
	  $timeout(function() {
		$('.popup-youtube').magnificPopup({
		    disableOn: 700,
		    type: 'iframe',
		    mainClass: 'mfp-fade',
		    removalDelay: 160,
		    preloader: false, 
		    fixedContentPos: false
		});
	  }, 3000);
	});
}); 
}

$scope.login = function(info){
	alert(info.username +info.password);
	$http.post('v1/studentlogin',{"username":info.username,"password":info.password}).success(function(data){
		 
	});
}
$scope.deleteInfo = function(info){
$http.post('databaseFiles/deleteDetails.php',{"del_id":info.emp_id}).success(function(data){
if (data == true) {
getInfo();
}
});
}
 
$scope.UpdateInfo = function(info){
$http.post('databaseFiles/updateDetails.php',{"id":info.emp_id,"name":info.emp_name,"email":info.emp_email,"address":info.emp_address,"gender":info.emp_gender}).success(function(data){
$scope.show_form = true;
	if (data == true) {
		getInfo();
	}
});
}
$scope.updateMsg = function(emp_id){
//$('#editForm').css('display', 'none');
}
}]);