<%-- 
    Document   : PackingList
    Created on : Oct 20, 2014, 10:50:47 AM
    Author     : JennySuwandoyo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>

    <%@include file="includes/MyPackingList.jsp"%>
    <%@include file="includes/InitiateItemManager.jsp"%>
    <%        
        String destination = (String) request.getAttribute("Destination");
        String openPackListDestination = (String) request.getParameter("Destination");
        String useMeList = (String) request.getParameter("useMeList");
        String packingListName = "";
        String packingListAttribute = "";
        out.println(destination);
        out.println(openPackListDestination);
        out.println(useMeList);

        out.println(im);

        ArrayList<Item> itemList = null;
        out.println(destination);
        out.println(useMeList);
        if (destination != null && !destination.equalsIgnoreCase("")) {
            itemList = im.retrieve(destination);
            packingListName = destination;
            packingListAttribute = destination;
        } else if (useMeList != null && !useMeList.equalsIgnoreCase("")) {
            itemList = im.retrieve(useMeList);
            packingListName = "Shanghai Time";
            packingListAttribute = "pinkyShanghai";
        } else {
            itemList = im.retrieve(openPackListDestination);
            if (openPackListDestination.equalsIgnoreCase("Shanghai Time")) {
                packingListName = "Shanghai Time";
                packingListAttribute = "pinkyShanghai";
                out.println("last else - if");
            } else {
                packingListName = openPackListDestination;
                packingListAttribute = openPackListDestination;
            }
        }
        out.println(itemList);
    %>
    
    <br/>
    <%
        out.println(destination);
        out.println(openPackListDestination);
        out.println(useMeList);
    %>
    
    <br/>
    <%
        out.println(packingListName);
        
        out.println(packingListAttribute);
    %>
        
</html>
