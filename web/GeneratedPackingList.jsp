<%-- 
    Document   : GeneratedPackingList
    Created on : Oct 3, 2014, 3:39:45 PM
    Author     : keithleng
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
        <link rel="stylesheet" type="text/css" href="css/GeneratedPackingList.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="js/mindmup-editabletable.js"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <title>PACK4YOU - Generated Packing List</title>
    </head>

    <body>
        <%@include file="includes/MyPackingList.jsp"%>
        
        <label id="page_title">
            <h5><font color="white">Generate your packing list</font></h5>
        </label>

        <h1><font color="white">Shanghai</font></h1>
        <div class="mainTable">
        <table id="mainTable" class="table table-striped">
           
            <tr><td>Item</td><td>Quantity</td><td>Weight</td>
            
              <tr><td tabindex="1" style="cursor: pointer;">Shirt</td><td tabindex="1" style="cursor: pointer;">8</td><td tabindex="1" style="cursor: pointer;">1kg</td></tr>
              <tr><td tabindex="1" style="cursor: pointer;">Pants</td><td tabindex="1" style="cursor: pointer;">8</td><td tabindex="1" style="cursor: pointer;">1kg</td></tr>
              <tr><td tabindex="1" style="cursor: pointer;">gloves</td><td tabindex="1" style="cursor: pointer;">2</td><td tabindex="1" style="cursor: pointer;">0.7kg</td></tr>
              <tr><td tabindex="1" style="cursor: pointer;">socks</td><td tabindex="1" style="cursor: pointer;">8</td><td tabindex="1" style="cursor: pointer;">0.5kg</td></tr>
              <tr><td tabindex="1" style="cursor: pointer;">jacket</td><td tabindex="1" style="cursor: pointer;">2</td><td tabindex="1" style="cursor: pointer;">2kg</td></tr>
         
              <tr><td><strong>TOTAL</strong></td><td>1290</td><td>1420</td></tr>
          </tfoot>
        </table>
        </div>
        <script>
            $('#table').editableTableWidget();
            $('#mainTable').editableTableWidget().numericInputExample().find('td:first').focus();
            $('#textAreaEditor').editableTableWidget({editor: $('<textarea>')});
            window.prettyPrint && prettyPrint();
        </script>
    </body>
</html>
