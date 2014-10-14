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
    </head>

    <body>
        <%@include file="includes/Home.jsp"%>
        <%@include file="includes/InitiateItemManager.jsp"%>
        <br/>
        <br/>
        <br/>

        <label id="page_title">
            <h5><font color="white">Generate your packing list</font></h5>
        </label>

        <script>
            $(function () {
                $("#datepicker").datepicker();
            });

            $(function () {
                $("#datepicker2").datepicker();
            });
        </script>

        <div class="HomeForm">
            <form action="GeneratePackingListServlet" method="post">
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
                    <input type="text"  name="BaggageAllowance" placeholder="BaggageAllowance(kg)">  
                </label>
                <input type="submit" value="PACK4ME">
                  <font color="black"><%=errorMsg%></font>
            </form>
        </div>
        
    </body>
   

</html>
