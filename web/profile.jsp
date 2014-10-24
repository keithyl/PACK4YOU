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
        <%@include file="includes/Inspiration.jsp"%>
        <%@include file="includes/MyPackingList.jsp"%>
        <%@include file="includes/InitiateItemManager.jsp"%>
        <%@include file="includes/Home.jsp"%>
    
        <%
            String packingListName = "essentials";
            String packingListAttribute = "essentialItems";

            ArrayList<Item> itemList = null;
            //Retrieve Essential 
            ArrayList<Item> myPackingLists = im.retrieveEssentialList();
        %>
    
    <body>
        <br/>
        <br/>
        <br/>

 
        <h2 class="h2"><center>Cheuky : Profile</center></h2>

        <div class="Profile" style="text-align: center;">
            <br>
            <table align="center">
                <tr> <td><img src="images/cheuky.png" alt="" width="150" height="150" border="2"/></td><td><b>Name: Cheuky</b><br>Age:21<br>Gender: Female</td></tr>
                <tr><td>  </td><td>  </td></tr>
            </table>
        </div>
        <center>
        <div class="container">
                <div id="widnow" class="col-xs-6 col-centered">
                    <div id="title_bar">
                        <div id="category">Essential Items&nbsp;&nbsp;</div>
                        <div id="minMaxButton"><img src="images/minimise.png" id="minTabImg" onclick="showTable1(this)" value="" height="35"/></div>
                    </div>
                    <div id="box1" class="table-responsive">
                        <table class="CSSTableGenerator">
                            <tr>
                                <td class="col-md-1">Item</td>
                                <td class="col-md-2">Quantity</td>
                                <td class="col-md-3">Weight(kg)</td>
                                <td class="col-sm-1">Action</td>
                            </tr>
                                <% 
                                   for (Item i: itemList){
                                        String c = i.getCategory();
                                        if (c.equalsIgnoreCase("Essentials")){
                                %>    
                            <tr>
                                <td class="col-md-1"><%=i.getName()%></td><input type = "hidden" name = "clothes1" value = "<%=i.getName()%>">
                                <td class="col-md-2"><%=i.getQuantity()%></td><input type = "hidden" name = "clothesqty1" value = "<%=i.getQuantity()%>">
                                <td class="col-md-3"><%=i.getTotalWeight()%></td><input type = "hidden" name = "clothestotalweight1" value = "<%=i.getTotalWeight()%>">
                                <td class="lastrow">
                                    <form id="addItemFromOtherPackList" name="addItemFromOtherPackList" method="post" action="GeneratedPackingList.jsp" 
                                            onSubmit="if (!confirm('Are you sure you want to add item (Passport) to your list?')) {
                                            return false;}" >
                                        <input type="hidden" name="Destination" id="Destination" value="Shanghai"/>
                                        <input type="hidden" name="addItemToMyList" id="addItemToMyList" value="Passport"/>
                                        <input class="BlueButton" type="submit" name="submit" value="+ to My List">
                                    </form>    
                                </td>
                            </tr>
                                <%
                                        }
                                    }
                                %>
                            <tr>
                                <td class="col-md-1">TOTAL</strong></td>
                                <td class="col-md-2"><strong>1</strong></td>
                                <td class="col-md-3"><strong>0.1</strong></td>
                                <td></td>
                            </tr>
                        </table>    
                    </div>
                </div>
    </body>
</html>
