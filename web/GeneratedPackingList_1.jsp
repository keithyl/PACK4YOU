<%-- 
    Document   : GeneratedPackingList
    Created on : Oct 3, 2014, 3:39:45 PM
    Author     : keithleng
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

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

        <link href="css/InspirationCSS.css" rel="stylesheet" type="text/css"  media="screen" />

        <title>PACK4YOU - Generated Packing List</title>
    </head>       
    <br/>
    <br/>
    <br/>

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

    <label id="page_title">
        <h5><font color="white">Generate your packing list</font></h5>
    </label>
    <h1><%=packingListName%></h1>
    <form id="savePackingListForm" name="savePackingListForm" method="post" action="SavePackingList" >
        <left><input class="BlueButton" type="submit" value="Save"></left>
        <!--
        Need this?
        <div class="container">

        </div> 
        -->
        <h3>Essentials</h3> <input type="image" src="images/add.png" height="25" width="25" onclick="myFunction()"/>
        <div class="PublicGeneratedTable">
            <div class="essentialsTable">
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
                if (c.equalsIgnoreCase("essentials")){
                    %>
                    <tr>
                        <td><%=i.getName()%></td>
                        <td><%=i.getQuantity()%></td>
                        <td><%=i.getTotalWeight()%></td>
                        <td><button type="button"  class="removebutton" title="Remove this row">X</button></td>
                    </tr>
                    <%
                }
            }
                    %>
                </table>
            </div>
        </div>

        <h3>Clothing</h3><input type="image" src="images/add.png" height="25" width="25" onclick="myFunction()"/>
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
                int clCount = 0;
                String c = i.getCategory();
                if (c.equalsIgnoreCase("clothes")){
                    ++clCount;
                    %>
                    <tr>
                        <td>
                            <%=i.getName()%>
                        </td>
                        <td>
                            <%=i.getQuantity()%>
                        </td>
                        <td>
                            <%=i.getTotalWeight()%>
                            <input type="hidden" name ="clItem<%=clCount%>" value = "<%=i.getName()%>,<%=i.getQuantity()%>,<%=i.getTotalWeight()%>,<%=i.getCategory()%>"/>
                        </td>
                        <td><button type="button"  class="removebutton" title="Remove this row">X</button></td>
                    </tr>
                    <%
                }
            }
                    %>
            </table>
        </div>

        <h3>Hygiene</h3><input type="image" src="images/add.png" height="25" width="25" onclick="myFunction()"/>
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
                    <%
                }
            }
                    %>
            </table>
        </div>

        <h3>Medication</h3><input type="image" src="images/add.png" height="25" width="25" onclick="myFunction()"/>
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
                if (c.equalsIgnoreCase("medication")){
                    %>
                    <tr>
                        <td><%=i.getName()%></td>
                        <td><%=i.getQuantity()%></td>
                        <td><%=i.getTotalWeight()%></td>
                        <td><button type="button"  class="removebutton" title="Remove this row">X</button></td>
                    </tr>
                    <%
                }
            }
                    %>
            </table>
        </div>

        <h3>Electronics</h3><input type="image" src="images/add.png" height="25" width="25" onclick="myFunction()"/>
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
                    <%
                }
            }
                    %>
            </table>
        </div>

        <h3>Total</h3><input type="image" src="images/add.png" height="25" width="25" onclick="myFunction()"/>
        <div class="PublicGeneratedTable">
            <table>
                <tr>
                    <td>Quantity</td>
                    <td>Weight (in kg)</td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
            </table>
        </div>
        <br/>
        <left><input class="BlueButton" type="submit" value="Save"></left>
    </form>
    <script>
        $(document).on('click', 'button.removebutton', function () {

            $(this).closest('tr').remove();
            numeric - input - example();
        });

        function myFunction() {

            var table = document.getElementById("essentialsTable");
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



        $('#essentialsTable').editableTableWidget().numericInputExample().find('td:first').focus();
        $('#clothing').editableTableWidget().numericInputExample().find('td:first').focus();
        $('#electronicsTable').editableTableWidget().numericInputExample().find('td:first').focus();
        $('#hygieneTable').editableTableWidget().numericInputExample().find('td:first').focus();
        $('#medicationTable').editableTableWidget().numericInputExample().find('td:first').focus();
        $('#textAreaEditor').editableTableWidget({editor: $('<textarea>')});

        window.prettyPrint && prettyPrint();
    </script>
</html>