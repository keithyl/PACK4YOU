<%-- 
    Document   : GeneratedPackingList
    Created on : Oct 3, 2014, 3:39:45 PM
    Author     : keithleng
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>



   <head>
       <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="screen" />
<link href="css/HomePage.css" rel="stylesheet" type="text/css"  media="screen" />
<link href="css/navbar.css" rel="stylesheet" type="text/css"  media="screen" />
<link href="css/ui-lightness/jquery-ui-1.9.1.custom.min.css" rel="stylesheet" type="text/css" media="screen"/>
         <link rel="stylesheet" type="text/css" href="css/GeneratedPackingList.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
         <link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-combined.no-icons.min.css" rel="stylesheet">
        <link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-responsive.min.css" rel="stylesheet">
    
        <script src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="css/GeneratedPackingList.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="screen" />
<link href="css/HomePage.css" rel="stylesheet" type="text/css"  media="screen" />
<link href="css/navbar.css" rel="stylesheet" type="text/css"  media="screen" />
<link href="css/ui-lightness/jquery-ui-1.9.1.custom.min.css" rel="stylesheet" type="text/css" media="screen"/>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>
        <script src="js/mindmup-editabletable.js"></script>
        <script src="js/numeric-input-example.js"></script>
        <title>PACK4YOU - Generated Packing List</title>
    </head>       
        <br/>
    
    <%@include file="includes/Inspiration.jsp"%>
    <%@include file="includes/MyPackingList.jsp"%>
    <%@include file="includes/InitiateItemManager.jsp"%>
    
    <%
        String destination = (String) request.getAttribute("Destination");
        
        String useMeList = (String)request.getParameter("useMeList");
        String packingListName = "";
        
        ArrayList<Item> itemList = null;
        if (destination != null && !destination.equalsIgnoreCase("")){
            itemList = im.retrieve(destination);
            packingListName = destination;
        }else{
            itemList = im.retrieve(useMeList);
            packingListName = "Shanghai Time";
        }
    %>
        <form id="savePackingListForm" name="savePackingListForm" method="post" action="SavePackingList" >
    <center>
        <h2>Generate Packing List</h2><input type="hidden" name="packingList" value="packingList">
        <h3>Clothing <img src="images/add.png" height="25" width="25" onclick="myFunction()"></a></h3>
        <div class="PublicGeneratedTable">
          <table id="mainTable">
     
            <tr>
                    <td>Item</td>
                    <td>Quantity</td>
                    <td>Weight (in kg)</td>
                    <td></td>
            </tr>
        <% 
                     
           for (Item i: itemList){
               String c = i.getCategory();
             if (c.equalsIgnoreCase("clothes")){
        %>    
            <tr>
                <input type = "hidden" name = "dest" value="<% destination = (String) request.getAttribute("Destination");%>">
                <td><%=i.getName()%></td><input type = "hidden" name = "clothes1" value = "<%=i.getName()%>">
                <td><%=i.getQuantity()%></td><input type = "hidden" name = "clothesqty1" value = "<%=i.getQuantity()%>">
                <td><%=i.getTotalWeight()%></td><input type = "hidden" name = "clothestotalweight1" value = "<%=i.getTotalWeight()%>">
                <td><button type="button"  class="removebutton" title="Remove this row">X</button></td>
            </tr>

    <%}
           }%>
             <tr>
                    <td><strong>TOTAL</strong></td>
                    <td><strong>34</strong></td>
                    <td><strong>14.0</strong></td>
                    <td></td>
                </tr>
        </table>
        </div>
        
                     
        <h3>Electronics<input type="image" src="images/add.png" height="25" width="25" onclick="myFunction()"/></h3>
        
        <div class="PublicGeneratedTable">
        <table>
            <tr>
                    <td>Item</td>
                    <td>Quantity</td>
                    <td>Weight (in kg)</td>
                    <td></td>
            </tr>
        <% 
           for (Item i: itemList){
               String c = i.getCategory();
             if (c.equalsIgnoreCase("electronics")){
        %>    
            <tr>
                <td><%=i.getName()%></td>
                <td><%=i.getQuantity()%></td>
                <td><%=i.getTotalWeight()%></td>
                <td><button type="button"  class="removebutton" title="Remove this row">X</button></td>
            </tr>

    <%}
           }%>
             <tr>
                    <td><strong>TOTAL</strong></td>
                    <td>2</td>
                    <td>0.40</td>
                    <td></td>
                </tr>
        </table>
        </div>
        
        <h3>Hygiene<input type="image" src="images/add.png" height="25" width="25" onclick="myFunction()"/></h3>

        <div class="PublicGeneratedTable">
        <table>
            <tr>
                    <td>Item</td>
                    <td>Quantity</td>
                    <td>Weight (in kg)</td>
                    <td></td>
            </tr>
        <% 
           for (Item i: itemList){
               String c = i.getCategory();
             if (c.equalsIgnoreCase("hygiene")){
        %>    
            <tr>
                <td><%=i.getName()%></td>
                <td><%=i.getQuantity()%></td>
                <td><%=i.getTotalWeight()%></td>
                <td><button type="button"  class="removebutton" title="Remove this row">X</button></td>
            </tr>

    <%}
           }%>
             <tr>
                    <td><strong>TOTAL</strong></td>
                    <td><strong>1</td>
                    <td><strong>0.70</td>
                    <td></td>
                </tr>
        </table>
        </div>
               
        <div class="PublicGeneratedTable">
        <h3>Medication<input type="image" src="images/add.png" height="25" width="25" onclick="myFunction()"/></h3>

          
        <table>
            <tr>
                    <td>Item</td>
                    <td>Quantity</td>
                    <td>Weight (in kg)</td>
                    <td></td>
            </tr>
        <% 
           for (Item i: itemList){
               String c = i.getCategory();
             if (c.equalsIgnoreCase("medication")){
        %>    
            <tr>
                <td><%=i.getName()%></td>
                <td><%=i.getQuantity()%></td>
                <td><%=i.getTotalWeight()%></td>
                <td><button type="button"  class="removebutton" title="Remove this row">X</button></td>
            </tr>

    <%}
           }%>
             <tr>
                    <td><strong>TOTAL</strong></td>
                    <td><strong>1</td>
                    <td><strong>0.10</td>
                    <td></td>
                </tr>
        </table>
        </div>
        <left><input class="BlueButton" type="submit" value="Save" ></left>  
               
        </form>
         
        <script>
         
       $(document).on('click','button.removebutton', function() {
            
          $(this).closest('tr').remove();
          numeric-input-example();
        });
        
function myFunction() {
   var table = document.getElementById("mainTable");
            var rowCount = table.rows.length;
            var row = table.insertRow(rowCount - 1);
            var cell1 = row.insertCell(0);
            var cell2 = row.insertCell(1);
            var cell3 = row.insertCell(2);
            var cell4 = row.insertCell(3);

            cell1.innerHTML = "<td><div contenteditable>";
            cell2.innerHTML = "<td><div contenteditable>";
            cell3.innerHTML = "<td><div contenteditable>";
            cell4.innerHTML = "<td><button type='button'  class='removebutton' title='Remove this row'>X</button></td>";
   
}

        $('#mainTable').editableTableWidget().numericInputExample().find('td:first').focus();
        $('#electronicsTable').editableTableWidget().numericInputExample().find('td:first').focus();
        $('#hygieneTable').editableTableWidget().numericInputExample().find('td:first').focus();
        $('#medicationTable').editableTableWidget().numericInputExample().find('td:first').focus();
 $('#textAreaEditor').editableTableWidget({editor: $('<textarea>')});
  
    window.prettyPrint && prettyPrint();
        </script>
        </center>
</html>