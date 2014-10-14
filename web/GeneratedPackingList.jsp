<%-- 
    Document   : GeneratedPackingList
    Created on : Oct 3, 2014, 3:39:45 PM
    Author     : keithleng
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<%
    String destination = (String)request.getAttribute("Destination");
%>

   
    
    
   <head>
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
        <br/>
        <br/>
    
 <%@include file="includes/MyPackingList.jsp"%>
 <%@include file="includes/InitiateItemManager.jsp"%>
 
        <label id="page_title">
            <h5><font color="white">Generate your packing list</font></h5>
        </label>
           <h1><font color="white">Shanghai</font></h1>
        <div class="container">
            <h3>Clothing<input type="image" src="images/add.png" height="25" width="25" onclick="myFunction()"/></h3>
          <div class="mainTable">
        <table id="mainTable" class="table table-striped">
         <thead><tr><th>Item</th><th>Quantity</th><th>Weight</th><th>Action</th></tr></thead>
        <% 
           ArrayList<Item> itemList = im.retrieve(destination);
           
           
           for (Item i: itemList){
               String c = i.getCategory();
             if (c.equalsIgnoreCase("clothes")){
        %>    
            <tbody>
            <tr>
                <td><font color="white"><%=i.getName()%></font></td>
                <td><font color="white"><%=i.getQuantity()%><font></td>
                <td><font color="white"><%=i.getTotalWeight()%><font></td>
                <td><button type="button"  class="removebutton" title="Remove this row">X</button></td>
            </tr>

            </tbody>
           
   <%}
           }%>
            <tfoot><tr><th><strong>TOTAL</strong></th><th></th><th></th><th></th></tr></thead>
        </table>
        </div>
        </div>
    
        <div class="container">
            <h3>Electronics<input type="image" src="images/add.png" height="25" width="25" onclick="myFunction()"/></h3>
          <div class="mainTable">
        <table id="electronicsTable" class="table table-striped">
         <thead><tr><th>Item</th><th>Quantity</th><th>Weight</th><th>Action</th></tr></thead>
        <% 
    
            //ItemManager im = new ItemManager();
           //ArrayList<Item> itemList = im.retrieve(destination);
           
           
           for (Item i: itemList){
               String c = i.getCategory();
               
        %>            
              
        <% if (c.equalsIgnoreCase("electronics")){
        %>    
            <tbody>
            <tr>
                <td><font color="white"><%=i.getName()%></font></td>
                <td><font color="white"><%=i.getQuantity()%><font></td>
                <td><font color="white"><%=i.getTotalWeight()%><font></td>
                <td><button type="button"  class="removebutton" title="Remove this row">X</button></td>
            </tr>

            </tbody>
           
   <%}
           }%>
            <tfoot><tr><th><strong>TOTAL</strong></th><th></th><th></th><th></th></tr></thead>
        </table>
        </div>
        </div>
           
        <div class="container">
            <h3>Hygiene<input type="image" src="images/add.png" height="25" width="25" onclick="myFunction()"/></h3>
          <div class="mainTable">
        <table id="hygieneTable" class="table table-striped">
         <thead><tr><th>Item</th><th>Quantity</th><th>Weight</th><th>Action</th></tr></thead>
        <% 
    
            //ItemManager im = new ItemManager();
          // ArrayList<Item> itemList = im.retrieve(destination);
           
           
           for (Item i: itemList){
               String c = i.getCategory();
               
        %>            
              
        <% if (c.equalsIgnoreCase("hygiene")){
        %>    
            <tbody>
            <tr>
                <td><font color="white"><%=i.getName()%></font></td>
                <td><font color="white"><%=i.getQuantity()%><font></td>
                <td><font color="white"><%=i.getTotalWeight()%><font></td>
                <td><button type="button"  class="removebutton" title="Remove this row">X</button></td>
            </tr>

            </tbody>
           
   <%}
           }%>
            <tfoot><tr><th><strong>TOTAL</strong></th><th></th><th></th><th></th></tr></thead>
        </table>
        </div>
        </div>   
           
        <div class="container">
            <h3>Medication<input type="image" src="images/add.png" height="25" width="25" onclick="myFunction()"/></h3>
          <div class="mainTable">
        <table id="medicationTable" class="table table-striped">
         <thead><tr><th>Item</th><th>Quantity</th><th>Weight</th><th>Action</th></tr></thead>
        <% 
    
           //ItemManager im = new ItemManager();
           //ArrayList<Item> itemList = im.retrieve(destination);
           
           
           for (Item i: itemList){
               String c = i.getCategory();
               
        %>            
              
        <% if (c.equalsIgnoreCase("medication")){
        %>    
            <tbody>
            <tr>
                <td><font color="white"><%=i.getName()%></font></td>
                <td><font color="white"><%=i.getQuantity()%><font></td>
                <td><font color="white"><%=i.getTotalWeight()%><font></td>
                <td><button type="button"  class="removebutton" title="Remove this row">X</button></td>
            </tr>

            </tbody>
           
   <%}
           }%>
            <tfoot><tr><th><strong>TOTAL</strong></th><th></th><th></th><th></th></tr></thead>
        </table>
        </div>
        </div>   
           
           
           
           
           
           
           
           
           
           
           
           
        <script>
         
       $(document).on('click','button.removebutton', function() {
            
          $(this).closest('tr').remove();
          numeric-input-example();
        });
        
function myFunction() {

    var table = document.getElementById("mainTable");
    var rowCount = table.rows.length;
    var row = table.insertRow(rowCount-1);
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
        
</html>