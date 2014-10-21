<%-- 
    Document   : MyPackingLists
    Created on : Oct 4, 2014, 10:19:48 PM
    Author     : Samsung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/publicPackingList.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PACK4YOU - My Packing Lists</title>
    </head>
    <body>
        <%@include file="includes/MyPackingList.jsp"%>
        <%@include file="includes/InitiateItemManager.jsp"%>
        <br/>
        <br/>
        <br/>

      
        <% 
             String destination = (String) request.getAttribute("Destination");
             String packingList = (String) request.getAttribute("packingList");
             //String packingList = (String) request.getAttribute("packingList");

            HashMap<String,ArrayList<Item>> myPackingLists = im.retrievePackingList();
        %>
        
        
        <% 
            if (myPackingLists == null || myPackingLists.size()== 0){
                out.println("<br/>You have no existing list. Go generate one <a href='Home.jsp'>here</a>! :) ");
            //}else if(){
            
            } else{
                Iterator it = myPackingLists.keySet().iterator();
                
        %>
        
        <div class="mainTable">
            <center>
                <h3><font color="white">My Packing Lists</font><img src="images/ChecklistIcon.png" height="30" width="30"></h3>
            <table bgcolor="white" border="">
                <tr bgcolor="white">
                    <th>S/N</th>
                    <th>Packing Lists</th>
                    <th></th>
                </tr>
        <% 
                int counter = 0;
                while (it.hasNext()) {
                    ++counter;
                    String packingListName = (String)it.next();
        %>
                <tr bgcolor="white">
                    <td><%=counter%></td>
                    <!--<td><a href="GeneratedPackingList1.jsp?Destination=<%=packingListName%>"><%=packingListName%></a></td>
                    -->
                    <td><a href="GeneratedPackingList.jsp?Destination=<%=packingListName.trim()%>"><%=packingListName%></a></td>
                    <td><a href="#">Delete</a></td>
                </tr>
        <%
                }
        %>
                
            </table>
            </center>
        </div> 
        <% 
            }
        %>
    </body>
</html>
