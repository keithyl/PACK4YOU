<%-- 
    Document   : profile
    Created on : Oct 23, 2014, 8:26:30 PM
    Author     : Michelle
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
        <title>PACK4YOU - Profile</title>      
    </head>
    <body>
        <%@include file="includes/Home.jsp"%>
        <%@include file="includes/InitiateItemManager.jsp"%>
        <br/>
        <br/>
        <br/>

 
        <h2 class="h2"><center>Cheuky : Profile</center></h2>

        <div class="Profile">
            <br>
            <table align="center">
                <tr> <td><img src="images/cheuky.png" alt="" width="150" height="150"/></td><td>Name: Cheuky<br>Age:21<br>Gender: Female</td></tr>
                <tr> <td colspan="2">Essential items: <br><list><ul>Cheuky Bear</ul><ul>Yellow Blanket</ul><ul>Hair spray</ul></td></tr>
            </table>
        </div>
    </body>
</html>
