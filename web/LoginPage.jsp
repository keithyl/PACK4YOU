<%-- 
    Document   : Login
    Created on : Oct 1, 2014, 7:16:01 PM
    Author     : Keith Leng
--%>
<%
    String errorMsg = (String) request.getAttribute("errorMsg");
    if(errorMsg == null){
        errorMsg= "";
    }
 %>
    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="ie6 ielt8"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="ie7 ielt8"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="ie8"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--> <html lang="en"> <!--<![endif]-->
<head>
<meta charset="utf-8">
<title>PACK4YOU</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />

</head>
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
 

<div class="container">
	<section id="content">
		
			<h1>PACK4YOU</h1>
                         <form name="login-form" action="LoginServlet" method="post">
                             <font color="red"><%=errorMsg%></font>
			<div>
				<input name="username" type="text" placeholder="Username" required="" id="username" />
			</div>
			<div>
				<input name ="password" type="password" placeholder="Password" required="" id="password" />
			</div>
			<div>
				<input type="submit" value="Log in" />
                                
				<a href="#">Lost your password?</a>
				<a href="#">Register</a>
			</div>
                        </form>
                        
		</form><!-- form -->
		<div class="fb-login-button" data-max-rows="1" data-size="large" data-show-faces="false" data-auto-logout-link="false"></div>
	</section><!-- content -->
</div><!-- container -->
</body>
<label id="credit">
<a href="https://www.flickr.com/photos/ambsab/11197203555/in/pool-2179950@N25/">Cristian Ruberti<a/>
</label>
</html>