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
            <h5><font color="white">View Inspirations</font></h5>
        </label>

        <font color="white">
        List of inspirations
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
    </body>
</html>