<%-- 
    Document   : MyPackingLists
    Created on : Oct 4, 2014, 10:19:48 PM
    Author     : Samsung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PACK4YOU - My Packing Lists</title>
    </head>
    <body>
        <%@include file="includes/MyPackingList.jsp"%>
        <%@include file="includes/InitiateItemManager.jsp"%>
        <br/>
        <br/>
        <br/>

        <label id="page_title">
            <h5><font color="white">My Packing Lists</font></h5>
        </label>
        
        <% 
            HashMap<String,ArrayList<Item>> myPackingLists = im.retrievePackingList();
        %>
        
        Lists of packing lists here...
        <% 
            if (myPackingLists == null || myPackingLists.size()== 0){
                out.println("You have no existing list. Go generate one <a href='Home.jsp'>here</a>! :) ");
            }else{
                Iterator it = myPackingLists.keySet().iterator();
                while (it.hasNext()) {
                    String packingListName = (String)it.next();
                    
                }
        %>
        
        <div class="mainTable">
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
                    <td><a href=""><%=packingListName%></a></td>
                    <td><a href="#">Delete</a></td>
                </tr>
        <%
                }
        %>
                
            </table>
        </div> 
        <% 
            }
        %>
    </body>
</html>
