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
            <h3>Clothing<input type="image" src="images/add.png" height="25" width="25" onclick="myFunction()"/></h3>
               
        <div class="mainTable">
        <table id="mainTable" class="table table-striped">
          
           <tr><td>Item</td><td>Quantity</td><td>Weight</td><td>Action</td></tr>
            
           
				<tr>
                                    <td><div contenteditable="true">Shirt</td>
					<td><div contenteditable="true">8</td>
					<td><div contenteditable="true">0.9</td>
                                        <td><button type="button"  class="removebutton" title="Remove this row">X</button></td>
				</tr>
			
             
				<tr>
					<td><div contenteditable="true">Pants</td>
					<td><div contenteditable="true">8</td>
					<td><div contenteditable="true">1.9</td>
                                        <td><button type="button"  class="removebutton" title="Remove this row">X</button></td>
				</tr>
			
         
              <tr><td><strong>TOTAL</strong></td><td>1290</td><td>1420</td></tr>
           
        </table>
        </div>
        </div>
        

        <script>
         
       $(document).on('click','button.removebutton', function() {
            
          $(this).closest('tr').remove();
          return false;
        });
        
function myFunction() {
    var table = document.getElementById("mainTable");
    var row = table.insertRow(3);
    var cell1 = row.insertCell(0);
    var cell2 = row.insertCell(1);
    var cell3 = row.insertCell(2);
    var cell4 = row.insertCell(3);
    
    cell1.innerHTML = "<td><div contenteditable>";
    cell2.innerHTML = "<td><div contenteditable>";
    cell3.innerHTML = "<td><div contenteditable>";
    cell4.innerHTML = "<td><button type='button'  class='removebutton' title='Remove this row'>X</button></td>";
    
}

        </script>
        
    </body>
</html>