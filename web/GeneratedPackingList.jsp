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
        <link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-combined.no-icons.min.css" rel="stylesheet">
        <link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-responsive.min.css" rel="stylesheet">
    
        <script src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="css/GeneratedPackingList.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        String packingListAttribute = "";
        
        ArrayList<Item> itemList = null;
        if (destination != null && !destination.equalsIgnoreCase("")){
            itemList = im.retrieve(destination);
            packingListName = destination;
            packingListAttribute = destination;
        }else{
            itemList = im.retrieve(useMeList);
            packingListName = "Shanghai Time";
            packingListAttribute = "pinkyShanghai";
        }
    %>
      
    <br>
    
    <h2><center><%=packingListName%></center></h2>
    <form id="savePackingListForm" name="savePackingListForm" method="post" action="SavePackingList" >
        <input type="hidden" name ="packingListName" value = "<%=packingListName%>"/>
        <input type="hidden" name ="packingListAttribute" value = "<%=packingListAttribute%>"/>
        <h2><center><input class="BlueButton" type="submit" value="Save"> Generated Packing List</center></h2><input type="hidden" name="packingList" value="packingList">
    </form> 
        
        
        <h3>Clothing <img src="images/add.png" height="25" width="25" onclick="myFunction()"></a></h3>
        <div class="col-xs-6">
          <div class="table-responsive">
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
             if (c.equalsIgnoreCase("clothes")){
        %>    
            <tr>
                <input type = "hidden" name = "dest" value="<% destination = (String) request.getAttribute("Destination");%>">
                <td class="col-md-1"><%=i.getName()%></td><input type = "hidden" name = "clothes1" value = "<%=i.getName()%>">
                <td class="col-md-2"><%=i.getQuantity()%></td><input type = "hidden" name = "clothesqty1" value = "<%=i.getQuantity()%>">
                <td class="col-md-3"><%=i.getTotalWeight()%></td><input type = "hidden" name = "clothestotalweight1" value = "<%=i.getTotalWeight()%>">
                <td class="lastrow"><button type="button"  class="removebutton" title="Remove this row">X</button></td>
            </tr>

            <%}
           }%>
             <tr>
                    <td class="col-md-1">TOTAL</strong></td>
                    <td class="col-md-2"><strong>34</strong></td>
                    <td class="col-md-3"><strong>14.0</strong></td>
                    <td></td>
                </tr>
        </table>
        </div>
        </div>
               
        
        <div class="col-xs-6">
       <div class="table-responsive">
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
             if (c.equalsIgnoreCase("electronics")){
        %>    
            <tr>
                <td class="col-md-1"><%=i.getName()%></td>
                <td class="col-md-2"><%=i.getQuantity()%></td>
                <td class="col-md-3"><%=i.getTotalWeight()%></td>
                <td class="lastrow"><button type="button"  class="removebutton" title="Remove this row">X</button></td>
            </tr>

    <%}
           }%>
             <tr>
                    <td><strong>TOTAL</strong></td>
                    <td>2</td>
                    <td>0.40</td>
                    
                </tr>
        </table>
        </div>
        </div>
        
        <h3>Hygiene<input type="image" src="images/add.png" height="25" width="25" onclick="myFunction()"/></h3>
        <div class="col-xs-6">
        <div class="CSSTableGenerator">
        <table>
            <tr>
                     <td class="col-md-1">Item</td>
                     <td class="col-md-2">Quantity</td>
                     <td class="col-md-3">Weight(kg)</td>
                     <td class="col-sm-1">Action</td>
            </tr>
        <% 
           for (Item i: itemList){
               String c = i.getCategory();
             if (c.equalsIgnoreCase("hygiene")){
        %>    
            <tr>
                <td class="col-md-1"><%=i.getName()%></td>
                <td class="col-md-2"><%=i.getQuantity()%></td>
                <td class="col-md-3"><%=i.getTotalWeight()%></td>
                <td class="col-sm-1"><button type="button"  class="removebutton" title="Remove this row">X</button></td>
            </tr>

    <%}
           }%>
             <tr>
                    <td><strong>TOTAL</strong></td>
                    <td>1</td>
                    <td>0.70</td>
                    <td></td>
                    
                </tr>
        </table>
        </div>
        </div>
        
        <div class="col-xs-6">
        <div class="table-responsive">
        <h2>Medication<input type="image" src="images/add.png" height="25" width="25" onclick="myFunction()"/></h2>

          
        <table class="CSSTableGenerator">
            <tr>
                    <td class="col-md-1">Item</td>
                    <td class="col-md-2">Quantity</td>
                    <td class="col-md-3">Weight (in kg)</td>
                    <td class="col-sm-1">Action</td>
            </tr>
        <% 
           for (Item i: itemList){
               String c = i.getCategory();
             if (c.equalsIgnoreCase("medication")){
        %>    
            <tr>
                <td class="col-md-1"><%=i.getName()%></td>
                <td class="col-md-2"><%=i.getQuantity()%></td>
                <td class="col-md-3"><%=i.getTotalWeight()%></td>
                <td class="col-sm-1"><button type="button"  class="removebutton" title="Remove this row">X</button></td>
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
        </div>    
        </form>
         
        <script>
         
       $(document).on('click','button.removebutton', function() {
            
          $(this).closest('tr').remove();
          numeric-input-example();
        });
        
function myFunction() {
   var table = document.getElementById("CSSTableGenerator");
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
      
</html>