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
        <%@include file="includes/Profile.jsp"%>
        <%@include file="includes/InitiateItemManager.jsp"%>
        <br/>
        <br/>
        <br/>

 
        <h2 class="h2"><center>Profile Creation</center></h2>

        <div class="Profile" style="text-align: center;">
            <form action="profile.jsp" method="post">
                <br>
                <table align="center">
                    <tr><td> <label id="first"><span style="font-size: 20px"></span></label></td>
                        <td><input type="text" name="Name" placeholder="Enter Name" required></td></tr>
                    
                    <tr><td><span style="font-size: 20px"></span></td>
                        <td><input id="age" type="text" placeholder="Enter Age" required/></td></tr>
                    
                    <tr><td><span style="font-size: 20px"></span></td>
                        <td><input id="gender" type="text" placeholder="Enter Gender" required/></td></tr>
                    
                    <tr><td><label id="first" value="Profile Picture"><span style="font-size: 20px"></span></td>
                        <td><input id="gender" type="image" placeholder="Select Profile Picture" required/></td></tr>
                    
                    <tr><td><label id="second">
                            <span class="glyphicon glyphicon-briefcase"  style="font-size: 20px"></span></label></td>
                            <td><input type="text"  name="BaggageAllowance" placeholder="Enter Essential Items"></td></tr>  
                    <tr><td colspan="2"><input class="btn-custom" type="submit" value="Submit and Next">
                            <font color="red"><%=errorMsg%></font></td></tr>
                </table>
            </form>
        </div>
    </body>
</html>
