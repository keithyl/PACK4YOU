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
                <div id="pageList"><font color="blue" size="4"><strong><left>There are 106 results found.</left></strong></font><div>     
                <p/>
                <p/>
                <table class="FilterListingTable">
                    <tr>
                        <td width="70%"></td>
                        <td >
                            &nbsp;1&nbsp;
                            <a href="" onclick="alert('Sorry... we are not implementing this :)');return false;">2</a>&nbsp; 
                            <a href="" onclick="alert('Sorry... we are not implementing this :)');return false;">3</a>&nbsp;
                            <a href="" onclick="alert('Sorry... we are not implementing this :)');return false;">4</a>&nbsp;...&nbsp;
                            <a href="" onclick="alert('Sorry... we are not implementing this :)');return false;">22</a>&nbsp;
                        </td>
                    </tr>
                </table>
                <p/>
                <p/>
                
                <table class="ResultList">
                    <tr>
                        <td><font color="blue" size="4"><strong><left>Results displayed: 1 - 5</left></strong></font></td>
                        <td colspan="2" ></td>
                    </tr>
                    <tr>
                        <td colspan="2" >Packing List 1 - Shanghai Time</td>
                        <td>
                            <a href="ViewPublicPackingList.jsp">
                                <input class="BlueButton" type="submit" value="View List">
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td><br/><img src="images/thumbUp.png" height="30"><br/><%=im.likesNo()%> Likes</td>
                        <td><br/><br/>#exchange | #student</td>
                        <td><br/><img src="images/user.gif" height="30"><br/>By: Pinky</td>
                    </tr>
                    <tr>
                        <td colspan="3" ></td>
                    </tr>
                    <tr>
                        <td colspan="3" ></td>
                    </tr>
                    <tr>
                        <td colspan="2" >Packing List 2 - Shanghai in Summer</td>
                        <td>
                            <!--<a href="ViewPublicPackingList.jsp"><img src="images/viewList.png">-->
                            <input class="BlueButton" type="submit" value="View List" onclick="alert('Sorry... we are not implementing this :)')return false;;">  
                        </td>
                    </tr>
                    <tr>
                        <td><br/><img src="images/thumbUp.png" height="30"><br/>699 Likes</td>
                        <td><br/>#seesighting</td>
                        <td><br/><img src="images/user.gif" height="30"><br/>By: Bluey</td>
                    </tr>
                    <tr>
                        <td colspan="3" ></td>
                    </tr>
                    <tr>
                        <td colspan="3" ></td>
                    </tr>
                    <tr>
                        <td colspan="2" >Packing List 3 - Shopping Trip to Shanghai</td>
                        <td>
                            <input class="BlueButton" type="submit" value="View List" onclick="alert('Sorry... we are not implementing this :)');return false;">  
                        </td>
                    </tr>
                    <tr>
                        <td><br/><img src="images/thumbUp.png" height="30"><br/>672 Likes</td>
                        <td><br/><br/>#Shopping</td>
                        <td><br/><img src="images/user.gif" height="30"><br/>By: maggieTheGal</td>
                    </tr>
                    <tr>
                        <td colspan="3" ></td>
                    </tr>
                    <tr>
                        <td colspan="3" ></td>
                    </tr>
                    <tr>
                        <td colspan="2" >Packing List 4 - December Holiday</td>
                        <td>
                            <!--<a href="ViewPublicPackingList.jsp"><img src="images/viewList.png">-->
                            <input class="BlueButton" type="submit" value="View List" onclick="alert('Sorry... we are not implementing this :)');return false;">  
                        </td>
                    </tr>
                    <tr>
                        <td><br/><img src="images/thumbUp.png" height="30"><br/>533 Likes</td>
                        <td><br/><br/>#culinarytrip</td>
                        <td><br/><img src="images/user.gif" height="30"><br/>By: Hazel90</td>
                    </tr>
                    <tr>
                        <td colspan="3" ></td>
                    </tr>
                    <tr>
                        <td colspan="3" ></td>
                    </tr>
                    <tr>
                        <td colspan="2" >Packing List 5 - Summer Exchange in Shanghai</td>
                        <td>
                            <!--<a href="ViewPublicPackingList.jsp"><img src="images/viewList.png">-->
                            <input class="BlueButton" type="submit" value="View List" onclick="alert('Sorry... we are not implementing this :)');return false;">  
                        </td>
                    </tr>
                    <tr>
                        <td><br/><img src="images/thumbUp.png" height="30"><br/>234 Likes</td>
                        <td><br/><br/>#summerexchange</td>
                        <td><br/><img src="images/user.gif" height="30"><br/>By: Marie</td>
                    </tr>
                    <tr>
                        <td colspan="3" ></td>
                    </tr>
                    <tr>
                        <td colspan="3" ></td>
                    </tr>
                </table>
                <table class="FilterListingTable">
                    <tr>
                        <td width="70%"></td>
                        <td >
                            &nbsp;1&nbsp;
                            <a href="" onclick="alert('Sorry... we are not implementing this :)');return false;">2</a>&nbsp; 
                            <a href="" onclick="alert('Sorry... we are not implementing this :)');return false;">3</a>&nbsp;
                            <a href="" onclick="alert('Sorry... we are not implementing this :)');return false;">4</a>&nbsp;...&nbsp;
                            <a href="" onclick="alert('Sorry... we are not implementing this :)');return false;">22</a>&nbsp;
                        </td>
                    </tr>
                </table>        
            </div> 
        </center>
    <%
        }
    %>
</body>
</html>