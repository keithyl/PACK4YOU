<%-- 
    Document   : HomePage
    Created on : Oct 1, 2014, 10:18:02 PM
    Author     : keithleng
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="screen" />
        <link href="css/HomePage.css" rel="stylesheet" type="text/css"  media="screen" />
        <link href="css/ui-lightness/jquery-ui-1.9.1.custom.min.css" rel="stylesheet" type="text/css" media="screen"/>
        <script src="js/jquery-ui.min.js"></script>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.1/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.1/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script>
  $(function() {
    $( "#datepicker" ).datepicker();
  });
  
  $(function() {
    $( "#datepicker2" ).datepicker();
  });
  </script>
    </head>
    <body>
        <div class="navbar navbar-inverse">
  <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-inverse-collapse">
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>
        <a class="navbar-brand" href="#">PACK4YOU</a>
  </div>
  <div class="navbar-collapse collapse navbar-inverse-collapse">
    <ul class="nav navbar-nav">
      <li><a href="HomePage.jsp">My Packing List</a></li>
      <li><a href="#">Inspiration</a></li>
    
    </ul>
    <div class="navbar-form navbar-left">
      <input type="text" class="form-control col-lg-8" placeholder="Search">
    </div>
    <ul class="nav navbar-nav navbar-right">
        <li><a href="#">Username: Cheuky</a></li>
        <li><a href="#">Settings</a></li>
        <li><a href="#">Logout</a></li>
    </ul>
  </div>
</div>
    <div class="form">
        <div><font color="white">Generate your packing list</font></div>
    <form action="GeneratedPackingList.jsp">
    <label id="first">
    <span class="glyphicon glyphicon-plane"  style="font-size: 20px"></span>
    <input type="text" name="Destination" placeholder="Destination"><br>
    </label>
        <span class="glyphicon glyphicon-calendar"  style="font-size: 20px"></span>
        <input id="datepicker" type="text" placeholder="MM/DD/YY"/>
        <span class="glyphicon glyphicon-calendar"  style="font-size: 20px"></span>
        <input id="datepicker2" type="text" placeholder="MM/DD/YY"/>
        <label id="second">
        <span class="glyphicon glyphicon-briefcase"  style="font-size: 20px"></span>
        <input type="text"  name="BaggageAllowance" placeholder="BaggageAllowance(kg)"><br>  
        </label>
        <input type="submit" value="PACK4ME" position="bottom">
    </form>
    </div>
          
    </body>
</html>
