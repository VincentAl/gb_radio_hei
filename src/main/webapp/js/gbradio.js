var app = angular.module("GBradio", ['ngRoute']);

app.config(function($routeProvider){
	$routeProvider.when('/', {redirectTo: '/news'});
	$routeProvider.when('/news', {templateUrl: 'fragments/list.html', controller: 'PostsCtrl'});
	$routeProvider.when('/articles', {templateUrl: 'fragments/list.html', controller: 'ArticlesCtrl'});
	$routeProvider.when('/youtube', {templateUrl: 'fragments/list.html', controller: 'YoutubeCtrl'});
	$routeProvider.when('/programmes', {templateUrl: 'fragments/program.html'});
	$routeProvider.when('/emission-differe', {templateUrl: 'fragments/list.html', controller: 'DelayedCtrl'});
	$routeProvider.when('/evenements', {templateUrl: 'fragments/list.html', controller: 'EventsCtrl'});
	$routeProvider.when('/post/:id', {templateUrl: 'fragments/post.html', controller: 'PostsCtrl'});
	$routeProvider.when('/contact', {templateUrl: 'fragments/contact.html', controller: 'PostsCtrl'});
	$routeProvider.otherwise({redirectTo: '/news'});
});

app.factory("GBradioFactory", function($http, $q){
	var factory = {
		data: false,

		getPost: function(id){
			var post;
			angular.forEach(factory.data, function(value, key){
				if(value.id == id){
					post = value;

				}
			});
			return post;
		},
		getPosts: function(type_link){

			var deferred = $q.defer();

			if( factory.data != false ){
				if(type_link == null)
					deferred.resolve(factory.data);
				else{
					var posts = [];
					angular.forEach(factory.data, function(value, key){
						if(parseInt(value.type.type_link) == parseInt(type_link)) posts.push(value);
					});
					deferred.resolve(posts);
				}
			}
			else{
				$http.get('http://192.168.1.40:8090/gbradio/webservices/news')
					.success(function(data, status){
						factory.data = data;

						if(type_link == null)
							deferred.resolve(factory.data);
						else{
							var posts = [];
							angular.forEach(factory.data, function(value, key){
								if(parseInt(value.type.type_link) == parseInt(type_link))
									posts.push(value);
							});
							deferred.resolve(posts);
						}
					}).error(function(data, status){
						deferred.reject('Impossible de se connecter au serveur de données.');
					});
			}
			return deferred.promise;
		}
	}

	return factory;
});

app.controller("PostsCtrl", function ($scope, GBradioFactory, $routeParams){
	$scope.posts = GBradioFactory.getPosts().then(
		function(data){
			$scope.posts = data;
			if($routeParams.id)
				$scope.post = GBradioFactory.getPost($routeParams.id);
		},
		function(error){
			console.log(error);
		});
});

app.controller("ArticlesCtrl", function ($scope, GBradioFactory){
	$scope.posts = GBradioFactory.getPosts(4).then(
		function(data){
			$scope.posts = data;
		},
		function(error){
			console.log(error);
		});
});

app.controller("YoutubeCtrl", function ($scope, GBradioFactory){
	$scope.posts = GBradioFactory.getPosts(2).then(
		function(data){
			$scope.posts = data;
		},
		function(error){
			console.log(error);
		});
});

app.controller("EventsCtrl", function ($scope, GBradioFactory){
	$scope.posts = GBradioFactory.getPosts(3).then(
		function(data){
			$scope.posts = data;
		},
		function(error){
			console.log(error);
		});
});

app.controller("DelayedCtrl", function ($scope, GBradioFactory){
	$scope.posts = GBradioFactory.getPosts(1).then(
		function(data){
			$scope.posts = data;
		},
		function(error){
			console.log(error);
		});
});
	


function testajax(){
	$.ajax({
		// url: "http://192.168.1.40:8090/gbradio/webservices/news",
		url: "http://88.142.159.160:8090/gbradio/webservices/news",
		dataType: "json",
		success: function(data, status){
			var li;
			for(var i = 0, l = data.length; i < l; i++){
				li = $("<li>"+data[i].title+"<span class=\"date\">"+data[i].modified+"</span></li>");
				$("#data").append(li);
			}
		}
	});
}

$(function(){
	$('#menu_hamburger, #sidebar a').click(toggleMenu);
	$(document).on('click,', '#main_content.sidebar-opened', toggleMenu);
	// $('#main_content').on('swiperight, swipeleft', toggleMenu);
});


var toggleMenu = function(e){
	e.stopPropagation();
	var opened = $('#sidebar').data('opened');
	switch(opened){
		case false: 
			$('#main_content').addClass('sidebar-opened');
			$('#sidebar').data('opened', true);
		break;

		case true:
			$('#main_content').removeClass('sidebar-opened');
			$('#sidebar').data('opened', false);
		break;
	}


}