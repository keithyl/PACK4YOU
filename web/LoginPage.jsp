<%-- 
    Document   : Login
    Created on : Oct 1, 2014, 7:16:01 PM
    Author     : Keith Leng
--%>
<%
    String errorMsg = (String) session.getAttribute("errorMsg");
    if(errorMsg == null){
        errorMsg= "";
    }
 %>
    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <title>Login Page</title>
    <link rel="stylesheet" href="css/style.css" media="screen" type="text/css" />
  
  <br/>
  <br/>
   
 <br/>
 <br/>
 <header align="center"><strong align="center" style="font-size: 300%">&nbsp;&nbsp;&nbsp;&nbsp;PACK4YOU</strong></header>

     <br/><br/><br/><br/>

  <body>
       <script>
      window.fbAsyncInit = function() {
        FB.init({
          appId      : '901639033197036',
          xfbml      : true,
          version    : 'v2.1'
        });
      };

      (function(d, s, id){
         var js, fjs = d.getElementsByTagName(s)[0];
         if (d.getElementById(id)) {return;}
         js = d.createElement(s); js.id = id;
         js.src = "//connect.facebook.net/en_US/sdk.js";
         fjs.parentNode.insertBefore(js, fjs);
       }(document, 'script', 'facebook-jssdk'));
    </script>
	<div class="login">
		<div class="login-screen">
			<div class="app-title">
				<h1>Login</h1>
			</div>
                        
			<div class="login-form">
                             <form name="login-form" action="LoginServlet" method="post">
				<div class="control-group">
				<input type="text" class="login-field" value="" placeholder="username" id="login-name">
				<label class="login-field-icon fui-user" for="login-name"></label>
				</div>

				<div class="control-group">
				<input type="password" class="login-field" value="" placeholder="password" id="login-pass">
				<label class="login-field-icon fui-lock" for="login-pass"></label>
				</div>
                                
				<a class="btn btn-primary btn-large btn-block" type="submit">login</a>
				<a class="login-link" href="#">Lost your password?</a>
                                <br>
                                <div class="fb-login-button" data-max-rows="1" data-size="large" data-show-faces="false" data-auto-logout-link="false"></div>
                             </form>
                        </div>
                             
		</div>
	</div>
</body>

</body>
   
   
</html>