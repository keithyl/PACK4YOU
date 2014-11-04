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
        <link href="css/InspirationCSS.css" rel="stylesheet" type="text/css"  media="screen" />
        <link href="css/ui-lightness/jquery-ui-1.9.1.custom.min.css" rel="stylesheet" type="text/css" media="screen"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="stylesheet" type="text/css" href="css/GeneratedPackingList.css" />
        <link rel="stylesheet" type="text/css" href="css/publicPackingList.css" />
       
        <link rel="stylesheet" type="text/css" href="css/GeneratedPackingList.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>
        <script src="jsp/mindmup-editabletable.js"></script>
        <script src="jsp/numeric-input-example.js"></script>
        <title>PACK4YOU - Generated Packing List</title>
    </head>       
        <br/>
        
    <%@include file="includes/Inspiration.jsp"%>
    <%@include file="includes/MyPackingList.jsp"%>
    <%@include file="includes/InitiateItemManager.jsp"%>
    
    <%
        String destination = (String) request.getAttribute("Destination");
        String openPackListDestination = (String) request.getParameter("Destination");
        String addItemToMyList = (String) request.getParameter("addItemToMyList");
        String useMeList = (String) request.getParameter("useMeList");
        String packingListName = "";
        String packingListAttribute = "";

        ArrayList<Item> itemList = null;
        ArrayList<Item> essentialList = null;

        if (destination != null && !destination.equalsIgnoreCase("")) {
            itemList = im.retrieve(destination);
            essentialList = im.retrieveEssentialList();
            packingListName = destination;
            packingListAttribute = destination;
        } else if (useMeList != null && !useMeList.equalsIgnoreCase("")) {
            itemList = im.retrieve(useMeList);
            essentialList = im.retrieveEssentialList();
            packingListName = "Shanghai Time";
            packingListAttribute = "pinkyShanghai";
        } else {
            itemList = im.retrieve(openPackListDestination);
            if (openPackListDestination.equalsIgnoreCase("Shanghai Time")) {
                packingListName = "Shanghai Time";
                packingListAttribute = "pinkyShanghai";
                essentialList = im.retrieveEssentialList();
            } else {
                packingListName = openPackListDestination;
                packingListAttribute = openPackListDestination;
                essentialList = im.retrieveEssentialList();
            }
        }
        String weather = im.getWeather(packingListAttribute);
        String[] deg = weather.split(";");
        if(addItemToMyList != null && !addItemToMyList.equalsIgnoreCase("")){
            itemList.add(new Item("Passport", 1, 0.1, "essentials"));
            //im.updatePackingList("Shanghai", itemList);
            HashMap<String, ArrayList<Item>> myPackingLists = im.retrievePackingList();
            myPackingLists.put(packingListName, itemList);
            session.setAttribute("itemMgr", im);
        }
    %>
      
    <br>
    <br>
    <h1><center>Generated Packing List - <%=packingListName%></center></h1>
     
   
   <br/>
       <div id="title_bar">
            <center>
            <table width="75%" >
                <tr>
                                           
                    <td width="25%" align="center">
                      
                        <img src="images/coldTemp.png" id="weather"  value="" height="50"/> <%=deg[0]%>°C to <%=deg[1]%>°C 
                         
                    </td>
                
                    <td width="50%" align="center">
                        
                        <img src="images/WeightLimit.png" id="weightLimit"  value="" height="50"/>  
                        <span id='weightChange'><font color="Green">Total: 19 kg</font></span> &nbsp;
                        <input type="button" class="BlueButton" value="Recalculate!" onclick="modify()"/>
                                            
                    </td>
                    <td width="25%" align="center">
                          
                    <form id="savePackingListForm" name="savePackingListForm" method="post" action="SavePackingList" >
                        <img src="images/save.png" id="save"  value="" height="50"/>&nbsp;
                        <input type="hidden" name ="packingListName" value = "<%=packingListName%>"/>
                        <input type="hidden" name ="packingListAttribute" value = "<%=packingListAttribute%>"/>
                        <input class="BlueButton" align="right" type="submit" value="Save"><input type="hidden" name="packingList" value="packingList">
                        <p/>
                    </form>
                        
                    </td>
                    
                </tr>
            </table>
            </center>               
        </div>
   <br>     
   <center>
          <div class="container">
          <div class="col-xs-6">
          <h3>Essentials &nbsp</h3> 
           <div class="table-responsive">
              
             <table class="CSSTableGenerator">
               
                    <tr>
                       <td class="col-md-1">Item</td>
                       <td class="col-md-2">Quantity</td>
                        <td class="col-md-3">Weight(kg)</td>
                        <td class="col-sm-1">Action</td>
                    </tr>
            <%
            int quantity = 0;
            double weight = 0;
            for (Item i: essentialList){
                String c = i.getCategory();

                    %>
                    <tr>
                        <td class="col-md-1"><%=i.getName()%></td><input type = "hidden" name = "clothes1" value = "<%=i.getName()%>">
                        <td class="col-md-2"><%=i.getQuantity()%></td><input type = "hidden" name = "clothesqty1" value = "<%=i.getQuantity()%>">
                        <td class="col-md-3"><%=i.getTotalWeight()%></td><input type = "hidden" name = "clothestotalweight1" value = "<%=i.getTotalWeight()%>">
                        <td class="lastrow"><button type="button"  class="removebutton" title="Remove this row">X</button></td>
                    </tr>
                    <%
            }
            for (Item i: itemList){
                String c = i.getCategory();
                 
                if (c.equalsIgnoreCase("essentials")){
                    quantity = quantity+=i.getQuantity();
                    weight = weight+=i.getTotalWeight();
                    %>
                    <tr>
                        <td class="col-md-1"><%=i.getName()%></td><input type = "hidden" name = "clothes1" value = "<%=i.getName()%>">
                        <td class="col-md-2"><%=i.getQuantity()%></td><input type = "hidden" name = "clothesqty1" value = "<%=i.getQuantity()%>">
                        <td class="col-md-3"><%=i.getTotalWeight()%></td><input type = "hidden" name = "clothestotalweight1" value = "<%=i.getTotalWeight()%>">
                        <td class="lastrow"><button type="button"  class="removebutton" title="Remove this row">X</button></td>
                    </tr>
                    <%
                   
                   
                }
            }
            
                    %>
                     <tr>
                    <td class="col-md-1"><strong>TOTAL   <img type="image" src="images/add.png" height="35" width="35" /></strong></td>
                    <td class="col-md-2"><%=quantity%><strong></strong></td>
                    <td class="col-md-3"><%=weight%><strong></strong></td>
                    <td></td>
                </tr>
                </table>
            </div>
        </div>
        
        
        <div class="col-xs-6">
            <h3>Clothing &nbsp</a></h3>
          <div class="table-responsive">
              <div class="CSSTableGenerator">
              <table class="CSSTableGenerator" id="clothing">
           
     
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
                  quantity = quantity+=i.getQuantity();
                    weight = weight+=i.getTotalWeight();
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
                    <td class="col-md-1"><strong>TOTAL  <img type="image" src="images/add.png" height="35" width="35" onclick="myFunction()"/></strong></td>
                    <td class="col-md-2"><strong></strong></td>
                    <td class="col-md-3"><strong></strong></td>
                    <td></td>
                </tr>
        </table>
        </div></div>
        </div>
               
        
        <div class="col-xs-6">
            <h3>Electronics </a></h3>
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
                    <td><strong>TOTAL  <img type="image" src="images/add.png" height="35" width="35" /></strong></td>
                    <td></td>
                    <td></td>
                    <td></td>                   
                </tr>
        </table>
        </div>
        </div>
       
        <div class="col-xs-6">
        <h3>Hygiene</h3>
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
                    <td><strong>TOTAL  <img type="image" src="images/add.png" height="35" width="35" /></strong></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    
                </tr>
        </table>
        </div>
        </div>
        
        <div class="col-xs-6">
        <h3>Medication</h3>
        <div class="table-responsive">
        <div class="CSSTableGenerator">

          
        <table class="Medication">
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
                    <td><strong>TOTAL  <img type="image" src="images/add.png" height="35" width="35" /></strong></td>
                    <td><strong></td>
                    <td><strong></td>
                    <td></td>
            </tr>
        </table>
        </div>
        </div>
        </div>
          </div>
   </center>
        </form>

        <script>
            function modify(){
            document.getElementById('weightChange').innerHTML = "<font color='red'>Total: 24kg</font>";
        }
function change( el )
{
    if ( el.value === "Current total weight is 19kg" )
        el.value = "Current total weight is 24kg";
    
    else
        el.value = "Current total weight is 19kg";
}

       $(document).on('click','button.removebutton', function() {
            
          $(this).closest('tr').remove();
          numeric-input-example();
        });
        
function myFunction() {
   var table = document.getElementById("clothing");
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