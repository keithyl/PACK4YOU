<%-- 
    Document   : ViewPublicPackingList
    Created on : Oct 4, 2014, 10:18:44 PM
    Author     : Samsung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/GeneratedPackingList.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="js/mindmup-editabletable.js"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <title>PACK4YOU - Other's Packing List</title>
    </head>
    <body>

        <%@include file="includes/Inspiration.jsp"%>

        <br/>
        <br/>
        <br/>

        <h1><font color="white">Shanghai by Bluey</font></h1>
        <div class="PublicGeneratedTable">
            <table>
                <tr>
                    <td>Item</td>
                    <td>Quantity</td>
                    <td>Weight</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Shirt</td>
                    <td>8</td>
                    <td>1kg</td>
                    <td>
                        <a href="#"><img src="images/addToMyList.png"></a>
                    </td>
                </tr>
                <tr>
                    <td>Pants</td>
                    <td>8</td>
                    <td>1kg</td>
                    <td>
                        <a href="#"><img src="images/addToMyList.png"></a>
                    </td>
                </tr>
                <tr>
                    <td>gloves</td>
                    <td>2</td>
                    <td>0.7kg</td>
                    <td>
                        <a href="#"><img src="images/addToMyList.png"></a>
                    </td>
                </tr>
                <tr>
                    <td><strong>TOTAL</strong></td>
                    <td>1290</td>
                    <td>1420</td>
                    <td></td>
                </tr>
                </tfoot>
            </table>
        </div>
                
        <br/>
        
        <font color="white"><h6>Reviews:</h6></font>
        <div class="">
            <table id="" class="">
                <tr bgcolor="white">
                    <td>User: Matty</td>
                    <td>A very long comments here...</td>
                    <td> 123 likes || <a href="#">LIKE</a></td>
                </tr>
                <tr bgcolor="white">
                    <td colspan="3">-------------------------------------------------------------------------------------</td>
                </tr>
                <tr bgcolor="white">
                    <td>User: Kitty</td>
                    <td>A very long comments here...</td>
                    <td> 424 likes || <a href="#">LIKE</a></td>
                </tr>
                <tr bgcolor="white">
                    <td colspan="3">-------------------------------------------------------------------------------------</td>
                </tr>
                <tr bgcolor="white">
                    <td>User: Lily</td>
                    <td>A very long comments here...</td>
                    <td> 234 likes || <a href="#">LIKE</a></td>
                </tr>
            </table>
        </div>
    </body>
</body>
</html>
