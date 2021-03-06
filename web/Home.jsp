<%-- 
    Document   : HomePage
    Created on : Oct 1, 2014, 10:18:02 PM
    Author     : keithleng
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%
    String errorMsg = (String) session.getAttribute("errorMsg");
    if(errorMsg == null){
        errorMsg= "";
    }else {
        session.removeAttribute("errorMsg");
    }
 %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>PACK4YOU - Home</title>
         <script>
            var _uxa = _uxa || [];
(function() {
   var uxa = document.createElement("script"); uxa.type = "text/javascript"; uxa.async = true;
   uxa.src = "//www.uxarmy.com/test/js";
   document.getElementsByTagName("head")[0].appendChild(uxa);
})();
</script>
    </head>

    <body>
        <%@include file="includes/Home.jsp"%>
        <%@include file="includes/InitiateItemManager.jsp"%>
        <br/>
        <br/>
        <br/>

 
        
       

        <script>
            $(function () {
                $("#datepicker").datepicker();
            });

            $(function () {
                $("#datepicker2").datepicker();
            });
        </script>
        <h1 class="h1"><center>Generate a packing list</center></h1>
        <div class="HomeForm">
            
            <form action="GeneratePackingListServlet" method="post">
                <label id="first">
                    <span class="glyphicon glyphicon-plane"  style="font-size: 20px"></span>
                    <input type="text" name="Destination" placeholder="Destination" required><br>
                </label>
                
                <span class="glyphicon glyphicon-calendar"  style="font-size: 20px"></span>
                <input id="datepicker" type="text" placeholder="MM/DD/YY" required/>
                <span class="glyphicon glyphicon-calendar"  style="font-size: 20px"></span>
                <input id="datepicker2" type="text" placeholder="MM/DD/YY" required/>
                <label id="second">
                    <span class="glyphicon glyphicon-briefcase"  style="font-size: 20px"></span>
                    <input type="text"  name="BaggageAllowance" placeholder="BaggageAllowance(kg)">  
                </label>
                <input class="myButton" type="submit" value="PACK4ME">
                  <font color="red"><%=errorMsg%></font>
            </form>
        </div>
        
    </body>
   

</html>
