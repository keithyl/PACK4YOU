<%-- 
    Document   : ViewInspirations
    Created on : Oct 3, 2014, 4:18:01 PM
    Author     : Samsung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PACK4YOU - View Inspirations</title>
    </head>

    <body>
        <%@include file="includes/Inspiration.jsp"%>

        <br/>
        <br/>
        <br/>

        <label id="page_title">
            <h5><font color="white"></font></h5>
        </label>
        
        <%
            String destination = (String) request.getParameter("destination");
            String errorMsg = "";
            if (destination == null) {
                destination = "";
                session.setAttribute("errorMsg","Please enter a destination");
            }
            if (!destination.equalsIgnoreCase("shanghai")){
                destination = "";
                session.setAttribute("errorMsg","Oooppsss.. My bad! The destination is currently unavailable.");
            }
            
            if(destination.equalsIgnoreCase("")){
        %>
            <jsp:forward page="Inspiration.jsp"/>
        <%    
            }else{
        %>    

            <%@include file="InspirationForm.jsp"%>
            <font color="white">
            <br/>
            <h2>Search Results - Packing Lists</h2>
            <br/>
            There are 2 results found.     
            </font>

            <div class="">
                <table id="" class="">
                    <tr bgcolor="white">
                        <td colspan="3" >Packing List 1 - SHANGHAIIIII!!!</td>
                    </tr>
                    <tr bgcolor="white">
                        <td>856 Likes</td>
                        <td><a href="ViewPublicPackingList.jsp">Show details</a></td>
                        <td>By: Bluey</td>
                    </tr>
                    <tr bgcolor="white"><td colspan="3">--------------------------------------------------------</td></tr>
                    <tr bgcolor="white">
                        <td colspan="3" >Packing List 2 - Shanghai in Summer</td>
                    </tr>
                    <tr bgcolor="white">
                        <td>234 Likes</td>
                        <td><a href="ViewPublicPackingList.jsp">Show details</a></td>
                        <td>By: Pinky</td>
                    </tr>
                </table>
            </div> 
        <%
            }
        %>
    </body>
</html>