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
        
        <br/>
        <br/>
        <br/>

        <label id="page_title">
            <h5><font color="white">My Packing Lists</font></h5>
        </label>
        
        Lists of packing lists here...
        <div class="mainTable">
            <table bgcolor="white" border="">
                <tr bgcolor="white">
                    <th>S/N</th>
                    <th>Packing Lists</th>
                    <th></th>
                </tr>
                <tr bgcolor="white">
                    <td>1</td>
                    <td><a href="GeneratedPackingList.jsp">Shanghai</a></td>
                    <td><a href="#">Delete</a></td>
                </tr>
                <tr bgcolor="white">
                    <td>2</td>
                    <td><a href="GeneratedPackingList.jsp">Taiwan</a></td>
                    <td><a href="#">Delete</a></td>
                </tr>
            </table>
        </div>    
    </body>
</html>
