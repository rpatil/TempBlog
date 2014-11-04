var blogApp = angular.module('blogApp', []);


blogApp.controller('TutorialsListCtrl', ['$scope', '$http',
 function ($scope, $http) {
    $http.get('/TutorialsList.json').success(function(data) {
      $scope.tutorials = data;
    });

    $scope.orderProp = 'total_view';
  }]);

blogApp.controller('TutorialsDetailCtrl', ['$scope', '$routeParams', '$http',
  function($scope, $routeParams, $http) {
    $http.get('/ShowTutorial/' + $routeParams.id +'.json').success(function(data) {
      $scope.tutorial = data;
    });
  }]);


/*

var tutorialsListServices = angular.module('tutorialsListServices', ['ngResource']);

tutorialsListServices.factory('Tutorials', ['$resource',
  function($resource){
    return $resource('tutorials/ShowTutorials.json', {}, {
      query: {method:'GET', /*params:{phoneId:'phones'}, isArray:true}
    });
  }]);

/*
blogApp.controller('TutorialsListCtrl', function ($scope) {
  $scope.tutorials = [
    {'title': 'First tutorials',
     'content_introduction': 'AngularJS extends HTML by providing directives that add functionality to your markup and allow you to create powerful dynamic templates. You can also create your own directives, crafting reusable components that fill your needs and abstracting away all the DOM manipulation logic. It also implements two-way data binding, connecting your HTML (views) to your JavaScript objects (models) seamlessly. In simple terms, this means that any update on your model will be immediately reflected in your view without the need for any DOM manipulation or event handling (e.g., with jQuery).'},
    {'title': 'Second Tutorials - 2',
     'content_introduction': 'The Next, Next Generation tablet.'},
    {'title': 'Third Tutorials - ',
     'content_introduction': 'The Next, Next Generation tablet.'}
  ];
});
*/

