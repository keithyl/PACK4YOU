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
        <%@include file="includes/InitiateItemManager.jsp"%>
        <br/>
        <br/>
        <br/>

        <%
            String destination = (String) request.getParameter("destination");
            String errorMsg = "";
            if (destination == null) {
                destination = "";
                session.setAttribute("errorMsg", "Please enter a destination");
            }
            if (!destination.equalsIgnoreCase("shanghai")) {
                destination = "";
                session.setAttribute("errorMsg", "Oooppsss.. My bad! The destination is currently unavailable.");
            }

            if (destination.equalsIgnoreCase("")) {
        %>
        <jsp:forward page="Inspiration.jsp"/>
        <%
        } else {
        %>    

        <%@include file="InspirationForm.jsp"%>
        <center>

            <font color="white">
            <br/>
            <h2>Search Results - Packing Lists</h2>
            <br/>
            </font>
            <div class="SearchResult">
                There are 2 results found.     
                <p/>
                <p/>
                <p/>
                <p/>
                <table class="ResultList">
                    <tr>
                        <td colspan="2" ></td>
                    </tr>
                    <tr>
                        <td>Packing List 1 - SHANGHAIIIII!!!</td>
                        <td>
                            <a href="ViewPublicPackingList.jsp">
                                <input class="BlueButton" type="submit" value="View List">
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td><br/><img src="images/thumbUp.png" height="27"><br/>856 Likes</td>
                        <td><br/><img src="images/user.gif" height="27"><br/>By: Pinky</td>
                    </tr>
                    <tr>
                        <td colspan="2" ></td>
                    </tr>
                    <tr>
                        <td colspan="2" ></td>
                    </tr>
                    <tr>
                        <td>Packing List 2 - Shanghai in Summer</td>
                        <td>
                            <!--<a href="ViewPublicPackingList.jsp"><img src="images/viewList.png">-->
                            <input class="BlueButton" type="submit" value="View List" onclick="alert('Sorry... we are not implementing this :)');">  
                        </td>
                    </tr>
                    <tr>
                        <td><br/><img src="images/thumbUp.png" height="27"><br/>234 Likes</td>
                        <td><br/><img src="images/user.gif" height="27"><br/>By: Bluey</td>
                    </tr>
                    <tr>
                        <td colspan="2" ></td>
                    </tr>
                    <tr>
                        <td colspan="2" ></td>
                    </tr>
                </table>
            </div> 
        </center>
    <%
        }
    %>
</body>
</html>