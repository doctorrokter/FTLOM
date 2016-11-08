import bb.cascades 1.4

Sheet {
    id: authPage
    
    property string clientId: "519381814927367"
    property string apiVersion: "v2.7"
    property string scope: "birthday,email,location,first_name,last_name,picture"
    property string display: "popup"
    property string redirectUri: "https://www.facebook.com/connect/login_success.html"
    property string ftlomUri: "http://146.185.153.4:8082/users/login?device_type=3&device_model=BlackBerry%20Passport&device_os=10.3&push_id=2BF98F81&access_token="
    
    signal loggedIn(string data)
    
    function init() {
        webView.storage.clearCookies();
        webView.url = "https://www.facebook.com/" + apiVersion + "/dialog/oauth?client_id=" + clientId + "&response_type=token&display=" + display + "&redirect_uri=" + redirectUri;
    }
    
    Page {
        Container {
            ScrollView {
                WebView {
                    id: webView
                    minHeight: 1440                
                    onUrlChanged: {
                        console.debug(url);
                        var urlStr = url + "";
                        if (urlStr.indexOf("#access_token") !== -1) {
                            var queryArray = urlStr.split("#")[1].split("&");
                            var accessToken = queryArray[0].split("=")[1];
                            
                            var request = new XMLHttpRequest();
                            request.onreadystatechange = function() {
                                if (request.readyState === XMLHttpRequest.DONE) {
                                    if (request.status === 200) {
                                        loggedIn(request.responseText);
                                    } else {
                                        console.debug("Status: " + request.status + ", status text: " + request.statusText);
                                        console.debug("Send once again!");
                                        request.open("GET", authPage.ftlomUri + accessToken, true);
                                        request.send();
                                    }
                                }
                            }
                            request.open("GET", authPage.ftlomUri + accessToken, true);
                            request.send();
                        }
                    }
                }
            }
        }
    }    
}
