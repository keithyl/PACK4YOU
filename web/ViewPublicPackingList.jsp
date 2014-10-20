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
        <script type="text/javascript">
            function jumpToAnchor(target) {
                window.location.hash = target;
            }          
        </script>

        <!--http://jqueryui.com/dialog/#modal-form-->

        <title>PACK4YOU - Other's Packing List</title>
    </head>
    <body>

        <%@include file="includes/Inspiration.jsp"%>
        <%@include file="includes/InitiateItemManager.jsp"%>
        <br/>
        <br/>
        <br/>
    <center>

        <br/>
        <h2>Shanghai Time by Pinky</h2>
        <br/>
        <table width="75%" >
            <tr>
                <td width="35%" align="left">
                    <input class="OrangeButton" type="button" value="Reviews" onclick="jumpToAnchor('reviews');
                            jumpToAnchor('x')">
                </td>
                <td width="30%" align="center">
                    <!-- LikeBtn.com BEGIN -->
                    <!--<span class="likebtn-wrapper" data-identifier="likePackingList" data-theme="drop" data-dislike_enabled="false" data-icon_dislike_show="false" data-popup_position="bottom"></span>
                    <script type="text/javascript" src="//w.likebtn.com/js/w/widget.js" async="async"></script> -->
                    <!-- LikeBtn.com END -->
                </td>
                <td width="35%" align="right">
                    <form id="useMeForm" name="useMeForm" method="get" action="GeneratedPackingList1.jsp">
                        <input type="hidden" name="useMeList" id="useMeList" value="pinkyShanghai"/>
                        <input class="GreenButton" type="submit" name="submit" value="Use Me!">
                    </form>
                </td>
            </tr>
        </table>

        <br/>
        <!--[COUNTRY; WEATHER; PERIOD?]-->
        <br/>

        <%
            String popupErr = "Sorry... we are not implementing this :)";
            ArrayList<Item> itemList = im.retrieve("pinkyShanghai");
        %>
        <center>
        <div class="container">
                <div id="widnow" class="col-xs-6 col-centered">
                    <div id="title_bar">
                        <div id="category">Essentials</div>
                        <div id="button2">-</div>
                    </div>
                    <div id="box2" class="table-responsive">
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
                                        if (c.equalsIgnoreCase("Essentials")){
                                %>    
                            <tr>
                                <td class="col-md-1"><%=i.getName()%></td><input type = "hidden" name = "clothes1" value = "<%=i.getName()%>">
                                <td class="col-md-2"><%=i.getQuantity()%></td><input type = "hidden" name = "clothesqty1" value = "<%=i.getQuantity()%>">
                                <td class="col-md-3"><%=i.getTotalWeight()%></td><input type = "hidden" name = "clothestotalweight1" value = "<%=i.getTotalWeight()%>">
                                <td class="lastrow">
                                    <form id="addItemFromOtherPackList" name="addItemFromOtherPackList" method="get" action="" 
                                            onSubmit="if (!confirm('Are you sure you want to add item (Passport) to your list?')) {
                                            return false;}" >
                                        <input type="hidden" name="addItemToMyList" id="addItemToMyList" value="Passpost,1,0.1,essential"/>
                                        <input class="BlueButton" type="submit" name="submit" value="+ to My List">
                                    </form>    
                                </td>
                            </tr>
                                <%
                                        }
                                    }
                                %>
                            <tr>
                                <td class="col-md-1">TOTAL</strong></td>
                                <td class="col-md-2"><strong>34</strong></td>
                                <td class="col-md-3"><strong>14.0</strong></td>
                                <td></td>
                            </tr>
                        </table>    
                    </div>
                </div>
                <div id="widnow" class="col-xs-6 col-centered">
                    <div id="title_bar">
                        <div id="category">Clothing</div>
                        <div id="button">-</div>
                    </div>
                    
                    <div id="box" class="table-responsive">
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
                                <td class="col-md-1"><%=i.getName()%></td><input type = "hidden" name = "clothes1" value = "<%=i.getName()%>">
                                <td class="col-md-2"><%=i.getQuantity()%></td><input type = "hidden" name = "clothesqty1" value = "<%=i.getQuantity()%>">
                                <td class="col-md-3"><%=i.getTotalWeight()%></td><input type = "hidden" name = "clothestotalweight1" value = "<%=i.getTotalWeight()%>">
                                <td class="lastrow">
                                    <input class="BlueButton" type="submit" value="+ to My List" onclick="alert('<%=popupErr%>');">
                                </td>
                            </tr>
                            <%
                                    }
                                }
                            %>
                            <tr>
                                <td class="col-md-1">TOTAL</strong></td>
                                <td class="col-md-2"><strong>34</strong></td>
                                <td class="col-md-3"><strong>14.0</strong></td>
                                <td></td>
                            </tr>
                        </table>
                    </div>
                </div>            
                <div id="widnow" class="col-xs-6 col-centered">
                    <div id="title_bar">
                        <div id="category">Hygiene</div>
                        <div id="button3">-</div>
                    </div>
                    <div id="box3" class="table-responsive">
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
                                    if (c.equalsIgnoreCase("Hygiene")){
                            %>    
                            <tr>
                                <td class="col-md-1"><%=i.getName()%></td><input type = "hidden" name = "clothes1" value = "<%=i.getName()%>">
                                <td class="col-md-2"><%=i.getQuantity()%></td><input type = "hidden" name = "clothesqty1" value = "<%=i.getQuantity()%>">
                                <td class="col-md-3"><%=i.getTotalWeight()%></td><input type = "hidden" name = "clothestotalweight1" value = "<%=i.getTotalWeight()%>">
                                <td class="lastrow">
                                    <input class="BlueButton" type="submit" value="+ to My List" onclick="alert('<%=popupErr%>');">
                                </td>
                            </tr>
                            <%
                                    }
                                }
                            %>
                            <tr>
                                <td class="col-md-1">TOTAL</strong></td>
                                <td class="col-md-2"><strong>34</strong></td>
                                <td class="col-md-3"><strong>14.0</strong></td>
                                <td></td>
                            </tr>
                        </table>
                    </div>
                </div>
 
                <div id="widnow" class="col-xs-6 col-centered">
                    <div id="title_bar">
                        <div id="category">Medication</div>
                        <div id="button4">-</div>
                    </div>
                    <div id="box4" class="table-responsive">
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
                                    if (c.equalsIgnoreCase("Medication")){
                            %>    
                            <tr>
                                <td class="col-md-1"><%=i.getName()%></td><input type = "hidden" name = "clothes1" value = "<%=i.getName()%>">
                                <td class="col-md-2"><%=i.getQuantity()%></td><input type = "hidden" name = "clothesqty1" value = "<%=i.getQuantity()%>">
                                <td class="col-md-3"><%=i.getTotalWeight()%></td><input type = "hidden" name = "clothestotalweight1" value = "<%=i.getTotalWeight()%>">
                                <td class="lastrow">
                                    <input class="BlueButton" type="submit" value="+ to My List" onclick="alert('<%=popupErr%>');">
                                </td>
                            </tr>
                            <%
                                    }
                                }
                            %>
                            <tr>
                                <td class="col-md-1">TOTAL</strong></td>
                                <td class="col-md-2"><strong>34</strong></td>
                                <td class="col-md-3"><strong>14.0</strong></td>
                                <td></td>
                            </tr>
                        </table>
                    </div>
                </div>
                 
                <div id="widnow" class="col-xs-6 col-centered">
                    <div id="title_bar">
                        <div id="category">Electronics</div>
                        <div id="button5">-</div>
                    </div>
                    <div id="box5" class="table-responsive">
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
                                    if (c.equalsIgnoreCase("Electronics")){
                            %>    
                            <tr>
                                <td class="col-md-1"><%=i.getName()%></td><input type = "hidden" name = "clothes1" value = "<%=i.getName()%>">
                                <td class="col-md-2"><%=i.getQuantity()%></td><input type = "hidden" name = "clothesqty1" value = "<%=i.getQuantity()%>">
                                <td class="col-md-3"><%=i.getTotalWeight()%></td><input type = "hidden" name = "clothestotalweight1" value = "<%=i.getTotalWeight()%>">
                                <td class="lastrow">
                                    <input class="BlueButton" type="submit" value="+ to My List" onclick="alert('<%=popupErr%>');">
                                </td>
                            </tr>
                            <%
                                    }
                                }
                            %>
                            <tr>
                                <td class="col-md-1">TOTAL</strong></td>
                                <td class="col-md-2"><strong>34</strong></td>
                                <td class="col-md-3"><strong>14.0</strong></td>
                                <td></td>
                            </tr>
                        </table>
                    </div>
                </div>
                <br/>               
        </div>    
            
        
        <br/>            
        <a name="reviews"><font color="white"><h4>See what others have to say...</h4></font></a>
        
        <div class="ReviewResult">
            <form id="addReview" name="addReview" method="post" action="ViewPublicPackingList.jsp" >
                <table class="ReviewList">
                    <tr>
                        <td colspan="3" ></td>
                    </tr>
                    <tr>
                        <td><img src="images/user.gif" height="35"><br/>Matty</td>
                        <td>A very long comments here...</td>
                        <td> <label for="like1">123 likes</label> || <a href="#">LIKE</a></td>
                    </tr>
                    <tr>
                        <td colspan="3" ></td>
                    </tr>
                    <tr>
                        <td colspan="3" ></td>
                    </tr>
                    <tr>
                        <td><img src="images/user.gif" height="35"><br/>Kitty</td>
                        <td>A very long comments here...</td>
                        <td> <label for="like2">424 likes</label> || <a href="#">LIKE</a></td>
                    </tr>
                    <tr>
                        <td colspan="3" ></td>
                    </tr>
                    <tr>
                        <td colspan="3" ></td>
                    </tr>
                    <tr>
                        <td><img src="images/user.gif" height="35"><br/>Lily</td>
                        <td>A very long comments here...</td>
                        <td> <label for="like3">424 likes</label> || <a href="#">LIKE</a></td>
                    </tr>
                    <tr>
                        <td colspan="3" ></td>
                    </tr>
                    <%                        
                        String user = request.getParameter("user");
                        String newReview = request.getParameter("newReview");
                        boolean hasReview = true;
                        if (user == null || user.equals("")) {
                            hasReview = false;
                        }
                        if (newReview == null || newReview.equals("")) {
                            hasReview = false;
                        }
                        if (hasReview) {
                    %>
                    <tr>
                        <td colspan="3" ></td>
                    </tr>
                    <tr>
                        <td><img src="images/user.gif" height="35"><br/><%=user%></td>
                        <td><%=newReview%></td>
                        <td> <label for="like4">0 like</label> || <a href="#">LIKE</a></td>
                    </tr>
                    <tr>
                        <td colspan="3" ></td>
                    </tr>
                    <%
                        }
                    %>
                    <tr>
                        <td colspan="3" ></td>
                    </tr>
                    <tr align="center">
                        <td>
                            <img src="images/user.gif" height="35"><br/>Cheuky
                            <input type="hidden" name ="user" value = "Cheuky"/>
                        </td>
                        <td><textarea type="text" name="newReview" placeholder="My review..." cols="40" rows="3" style="width:95%;wrap:off;"></textarea></td>
                        <td>
                            <input class="BlueButton" type="submit" value="Submit">
                        </td>
                    </tr>
                </table>
            </form>
            <a href="#"><left>back to top</left></a>
            <br/>
        </div>
                    
    </center>
                    
    <script type="text/javascript">
        $("#button").click(function(){
            if($(this).html() === "-"){
                $(this).html("+");
            }
            else{
                $(this).html("-");
            }
            $("#box").slideToggle();
        });
        $("#button2").click(function(){
            if($(this).html() === "-"){
                $(this).html("+");
            }
            else{
                $(this).html("-");
            }
            $("#box2").slideToggle();
        });
        $("#button3").click(function(){
            if($(this).html() === "-"){
                $(this).html("+");
            }
            else{
                $(this).html("-");
            }
            $("#box3").slideToggle();
        });
        $("#button4").click(function(){
            if($(this).html() === "-"){
                $(this).html("+");
            }
            else{
                $(this).html("-");
            }
            $("#box4").slideToggle();
        });
        $("#button5").click(function(){
            if($(this).html() === "-"){
                $(this).html("+");
            }
            else{
                $(this).html("-");
            }
            $("#box5").slideToggle();
        });

    </script>
</body>

</html>
