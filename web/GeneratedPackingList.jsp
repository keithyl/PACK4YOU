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
        
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
      
        <title>PACK4YOU - Generated Packing List</title>
    </head>

    <body>
        <%@include file="includes/MyPackingList.jsp"%>
        
        <br/>
        <br/>
        <br/>
        
        <label id="page_title">
            <h5><font color="white">Generate your packing list</font></h5>
        </label>

        <h1><font color="white">Shanghai</font></h1>
        <div class="container">
            <h3>Clothing</h3>
               
        <div class="mainTable">
        <table id="mainTable" class="table table-striped">
           <button id ="addbutton">Add Row</button>
           <tr><td>Item</td><td>Quantity</td><td>Weight</td><td>Action</td></tr>
            
           	<tbody>
				<tr>
					<td>Shirt</td>
					<td>8</td>
					<td>0.9</td>
                                        <td><button type="button"  class="removebutton" title="Remove this row">X</button></td>
				</tr>
			</tbody>
             <tbody>
				<tr>
					<td>Pants</td>
					<td>8</td>
					<td>1.9</td>
                                        <td><button type="button"  class="removebutton" title="Remove this row">X</button></td>
				</tr>
			</tbody>
         
              <tr><td><strong>TOTAL</strong></td><td>1290</td><td>1420</td></tr>
           
        </table>
        </div>
        </div>
        <script>
         
       $(document).on('click','button.removebutton', function() {
            
          $(this).closest('tr').remove();
          return false;
        });
        
  var i = 1;
$("#addbutton").click(function() {
  $("table tr:first").clone().find("input").each(function() {
    $(this).val('').attr({
      'id': function(_, id) {return id + i },
      'name': function(_, name) { return name + i },
      'value': ''               
    });
  }).end().appendTo("table");
  i++;
    
  applyRemoveEvent();  
});
        </script>
        
    </body>
</html>