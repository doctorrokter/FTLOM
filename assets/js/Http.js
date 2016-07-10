'use strict';

var Http = {
		apiUrl: 'http://146.185.153.4:8082',
		
		request: function request(httpMethod, url, paramsStr, onSuccess, onError) {
			var fullUrl = apiUrl + '/' + url;
			console.debug('request: ' + httpMethod);
			console.debug('url: ' + fullUrl);
			console.debug('params: ' + paramsStr);
			
			var _req = new XMLHttpRequest();

			_req.open(httpMethod, fullUrl, true);
			_req.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

			_req.onreadystatechange = function() {
				if (_req.readyState === 4) {
					if (_req.status >= 200 && _req.status < 300) {
						onSuccess(_req.responseText);
					} else {
						console.debug(_req.responseText);
					}
				}
			};

			_req.onerror = function() {
				console.debug('Network Error');
			};

			_req.send(paramsStr || null);
		},

		stringifyParams: function stringifyParams(paramsObj) {
			var strinigfiedParams = '';
			for (var param in paramsObj) {
				strinigfiedParams = strinigfiedParams.concat(param).concat('=').concat(paramsObj[param]).concat('&');
			}
			return strinigfiedParams.substr(0, strinigfiedParams.lastIndexOf('&'));
		},

		get: function get(methodName, paramsObj, onSuccess, onError) {
			this.request('get', methodName + '?' + this.stringifyParams(paramsObj), null, onSuccess, onError);
		},

		post: function post(methodName, paramsObj, onSuccess, onError) {
			this.request('post', methodName, this.stringifyParams(paramsObj), onSuccess, onError);
		}
};