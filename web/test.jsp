<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">

	<title>Tiny editable jQuery Bootstrap spreadsheet from MindMup</title>
	
   
    <link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-combined.no-icons.min.css" rel="stylesheet">
    <link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-responsive.min.css" rel="stylesheet">
		
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.0/jquery.min.js"></script>
    <script src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/js/bootstrap.min.js"></script>
    
		
    <script src="jsp/mindmup-editabletable.js"></script>
    <script src="jsp/numeric-input-example.js"></script>
  </head>
  <body>

 
	<h1>editableTableWidget<br/> <small>tiny editable jQuery Bootstrap spreadsheet</small></h1>
	<hr/>
		<div class="alert alert-error hide">
			That would cost too much
		</div>
          <table id="mainTable" class="table table-striped">
            <thead><tr><th>Name</th><th>Cost</th><th>Profit</th><th>Fun</th></tr></thead>
            <tbody>
              <tr><td>Car</td><td>100</td><td>200</td><td>0</td></tr>
              <tr><td>Bike</td><td>330</td><td>240</td><td>1</td></tr>
              <tr><td>Plane</td><td>430</td><td>540</td><td>3</td></tr>
              <tr><td>Yacht</td><td>100</td><td>200</td><td>0</td></tr>
              <tr><td>Segway</td><td>330</td><td>240</td><td>1</td></tr>
            </tbody>
			
          </table>
          
</div>

	


<script>
  $('#mainTable').editableTableWidget().numericInputExample().find('td:first').focus();
  $('#textAreaEditor').editableTableWidget({editor: $('<textarea>')});
  window.prettyPrint && prettyPrint();
</script>





      
  </body>
</html>

