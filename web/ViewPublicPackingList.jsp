<%-- 
    Document   : ViewPublicPackingList
    Created on : Oct 4, 2014, 10:18:44 PM
    Author     : Samsung
--%>

<%@page import="java.util.HashMap"%>
<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/GeneratedPackingList.css" />
        <link rel="stylesheet" type="text/css" href="css/publicPackingList.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="jsp/mindmup-editabletable.js"></script>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script type="text/javascript">
            function jumpToAnchor(target) {
                window.location.hash = target;
            }          
             
            var _uxa = _uxa || [];
(function() {
   var uxa = document.createElement("script"); uxa.type = "text/javascript"; uxa.async = true;
   uxa.src = "//www.uxarmy.com/test/js";
   document.getElementsByTagName("head")[0].appendChild(uxa);
})();

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
        <%
            String likeImgUrl = "";
            String likeUrlExist = request.getParameter("isLike");
            if (likeUrlExist != null && !likeUrlExist.equals("")){
                if (likeUrlExist.contains("Black")){
                    im.addLike();
                }else{
                    im.disLike();
                }
                session.setAttribute("itemMgr", im);
            }
            
            if(im.likesNo()==856){
                likeImgUrl = "images/thumbUpBlack.png";
            }else{
                likeImgUrl = "images/thumbUp.png";
            }
            
        %>
        <br/>
        <h2>Shanghai Time by Pinky</h2>  
            
           
        <br/>
       
        <div id="title_bar">
            <center>
            <table width="75%" >
                <tr>
                    <td width="20%" align="left">
                        <input class="OrangeButton" type="button" value="Reviews" onclick="jumpToAnchor('reviews');
                                jumpToAnchor('x')">
                    </td>
                    <td width="25%" align="center">
                        <!-- LikeBtn.com BEGIN -->
                        <!--<span class="likebtn-wrapper" data-identifier="likePackingList" data-theme="drop" data-dislike_enabled="false" data-icon_dislike_show="false" data-popup_position="bottom"></span>
                        <script type="text/javascript" src="//w.likebtn.com/js/w/widget.js" async="async"></script> -->
                        <!-- LikeBtn.com END -->
                        <img src="images/coldTemp.png" id="weather"  value="" height="50"/> 3°C to 11°C 
                    </td>
                    <td width="20%" align="center">
                        <!-- LikeBtn.com BEGIN -->
                        <!--<span class="likebtn-wrapper" data-identifier="likePackingList" data-theme="drop" data-dislike_enabled="false" data-icon_dislike_show="false" data-popup_position="bottom"></span>
                        <script type="text/javascript" src="//w.likebtn.com/js/w/widget.js" async="async"></script> -->
                        <!-- LikeBtn.com END -->
                        <div>
                            <img src="images/WeightLimit.png" id="totalWeight"  value="" height="50"/>
                            Total: 19.8 kg
                        </div>
                    </td>
                    <td width="15%" align="center">
                        <form id="likeForm" name="likeForm" method="post" action="ViewPublicPackingList.jsp">
                            <input type="hidden" name ="isLike" value = "<%=likeImgUrl%>"/>
                            <img src="<%=likeImgUrl%>" id="likeImg" onclick="diffImage(this)" value="" height="35"/>
                        
                            <%
                                if(likeImgUrl.equals("images/thumbUpBlack.png")){
                            %>        Like
                            <%  
                                }else{
                            %>        Liked
                            <%
                                }
                            %>
                        </form>
                    </td>
                    <td width="20%" align="right">
                        <form id="useMeForm" name="useMeForm" method="get" action="GeneratedPackingList.jsp">
                            <input type="hidden" name="useMeList" id="useMeList" value="pinkyShanghai"/>
                            <input class="GreenButton" type="submit" name="submit" value="Use Me!">
                        </form>
                    </td>
                </tr>
            </table>
            </center>               
        </div>

        

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
                        <div id="category">Essentials&nbsp;&nbsp;</div>
                        <div id="minMaxButton"><img src="images/minimise.png" id="minTabImg" onclick="showTable1(this)" value="" height="35"/></div>
                    </div>
                    <div id="box1" class="table-responsive">
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
                                    <form id="addItemFromOtherPackList" name="addItemFromOtherPackList" method="post" action="GeneratedPackingList.jsp" 
                                            onSubmit="if (!confirm('Are you sure you want to add item (Passport) to your list?')) {
                                            return false;}" >
                                        <input type="hidden" name="Destination" id="Destination" value="Shanghai"/>
                                        <input type="hidden" name="addItemToMyList" id="addItemToMyList" value="Passport"/>
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
                                <td class="col-md-2"><strong>1</strong></td>
                                <td class="col-md-3"><strong>0.1</strong></td>
                                <td></td>
                            </tr>
                        </table>    
                    </div>
                </div>
                <div id="widnow" class="col-xs-6 col-centered">
                    <div id="title_bar">
                        <div id="category">Clothing&nbsp;&nbsp;&nbsp;&nbsp;</div>
                        <div id="minMaxButton"><img src="images/minimise.png" id="minTabImg" onclick="showTable2(this)" value="" height="35"/></div>
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
                                    if (c.equalsIgnoreCase("clothes")){
                            %>    
                            <tr>
                                <td class="col-md-1"><%=i.getName()%></td><input type = "hidden" name = "clothes1" value = "<%=i.getName()%>">
                                <td class="col-md-2"><%=i.getQuantity()%></td><input type = "hidden" name = "clothesqty1" value = "<%=i.getQuantity()%>">
                                <td class="col-md-3"><%=i.getTotalWeight()%></td><input type = "hidden" name = "clothestotalweight1" value = "<%=i.getTotalWeight()%>">
                                <td class="lastrow">
                                    <input class="BlueButton" type="submit" value="+ to My List" onclick="alert('<%=popupErr%>');return false;">
                                </td>
                            </tr>
                            <%
                                    }
                                }
                            %>
                            <tr>
                                <td class="col-md-1">TOTAL</strong></td>
                                <td class="col-md-2"><strong>31</strong></td>
                                <td class="col-md-3"><strong>13</strong></td>
                                <td></td>
                            </tr>
                        </table>
                    </div>
                </div>            
                <div id="widnow" class="col-xs-6 col-centered">
                    <div id="title_bar">
                        <div id="category">Hygiene&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
                        <div id="minMaxButton"><img src="images/minimise.png" id="minTabImg" onclick="showTable3(this)" value="" height="35"/></div>
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
                                    <input class="BlueButton" type="submit" value="+ to My List" onclick="alert('<%=popupErr%>');return false;">
                                </td>
                            </tr>
                            <%
                                    }
                                }
                            %>
                            <tr>
                                <td class="col-md-1">TOTAL</strong></td>
                                <td class="col-md-2"><strong>1</strong></td>
                                <td class="col-md-3"><strong>0.5</strong></td>
                                <td></td>
                            </tr>
                        </table>
                    </div>
                </div>
 
                <div id="widnow" class="col-xs-6 col-centered">
                    <div id="title_bar">
                        <div id="category">Medication</div>
                        <div id="minMaxButton"><img src="images/minimise.png" id="minTabImg" onclick="showTable4(this)" value="" height="35"/></div>
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
                                    <input class="BlueButton" type="submit" value="+ to My List" onclick="alert('<%=popupErr%>');return false;">
                                </td>
                            </tr>
                            <%
                                    }
                                }
                            %>
                            <tr>
                                <td class="col-md-1">TOTAL</strong></td>
                                <td class="col-md-2"><strong>1</strong></td>
                                <td class="col-md-3"><strong>0.4</strong></td>
                                <td></td>
                            </tr>
                        </table>
                    </div>
                </div>
                 
                <div id="widnow" class="col-xs-6 col-centered">
                    <div id="title_bar">
                        <div id="category">Electronics</div>
                        <div id="minMaxButton"><img src="images/minimise.png" id="minTabImg" onclick="showTable5(this)" value="" height="35"/></div>
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
                                        String weightStr = "";
                                        try {
                                            DecimalFormat df = new DecimalFormat("0.0");
                                            weightStr = df.format(i.getTotalWeight());
                                        } catch (Exception e) {
                                        }
            
                            %>    
                            <tr>
                                <td class="col-md-1"><%=i.getName()%></td><input type = "hidden" name = "clothes1" value = "<%=i.getName()%>">
                                <td class="col-md-2"><%=i.getQuantity()%></td><input type = "hidden" name = "clothesqty1" value = "<%=i.getQuantity()%>">
                                <td class="col-md-3"><%=weightStr%></td><input type = "hidden" name = "clothestotalweight1" value = "<%=i.getTotalWeight()%>">
                                <td class="lastrow">
                                    <input class="BlueButton" type="submit" value="+ to My List" onclick="alert('<%=popupErr%>');return false;">
                                </td>
                            </tr>
                            <%
                                    }
                                }
                            %>
                            <tr>
                                <td class="col-md-1">TOTAL</strong></td>
                                <td class="col-md-2"><strong>5</strong></td>
                                <td class="col-md-3"><strong>5.8</strong></td>
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
                        <td colspan="2" ></td>
                        <td >
                            <strong>&nbsp;1&nbsp;
                                <a href="" onclick="alert('Sorry... we are not implementing this :)');return false;">2</a>&nbsp; 
                                <a href="" onclick="alert('Sorry... we are not implementing this :)');return false;">3</a>&nbsp;...&nbsp;
                                <a href="" onclick="alert('Sorry... we are not implementing this :)');return false;">15</a>&nbsp;
                            </strong>
                        </td>
                    </tr>
                    <%                        
                        String user = request.getParameter("user");
                        String newReview = request.getParameter("newReview");
                        HashMap<String,String> reviewList = (HashMap<String,String>)session.getAttribute("review");
                        boolean hasReview = true;
                        if (user == null || user.equals("")) {
                            hasReview = false;
                        }
                        if (newReview == null || newReview.equals("")) {
                            hasReview = false;
                        }
                        if (hasReview) {
                            reviewList.put(newReview, new Date().toLocaleString());
                        }                 
                        session.setAttribute("review", reviewList);

                        if(!reviewList.isEmpty()){
                            Iterator it = reviewList.keySet().iterator();

                            while (it.hasNext()) {
                                String rev = (String)it.next();
                                String date = reviewList.get(rev);
                                //if (listSize == 1 ){
                                //    user = "Melody88";
                                //}
                            /*}
                        boolean hasReview = true;
                        if (user == null || user.equals("")) {
                            hasReview = false;
                        }
                        if (newReview == null || newReview.equals("")) {
                            hasReview = false;
                        }
                        if (hasReview) {*/
                    %>
                    
                    <tr>
                        <td><img src="images/user.gif" height="35"><br/><%=user%></td>
                        <td><%=rev%></td>
                        <td><%=date%></td>
                    </tr>
                    <tr>
                        <td colspan="3" ></td>
                    </tr>
                    <tr>
                        <td colspan="3" ></td>
                    </tr>
                    <%
                            }     
                        }
                    %>
                    <tr>
                        <td><img src="images/user.gif" height="35"><br/>Matty</td>
                        <td>Good for a long trip too... #sightseeing</td>
                        <td>Oct 21, 2014 12:34:48 PM</td>
                    </tr>
                    <tr>
                        <td colspan="3" ></td>
                    </tr>
                    <tr>
                        <td colspan="3" ></td>
                    </tr>
                    <tr>
                        <td><img src="images/user.gif" height="35"><br/>KeithL</td>
                        <td>Great for minimalist packing! Amount to pack is just nice for exchange:) #minimalist</td>
                        <td>Oct 15, 2014 08:34:23 PM</td>
                    </tr>
                    <tr>
                        <td colspan="3" ></td>
                    </tr>
                    <tr>
                        <td colspan="3" ></td>
                    </tr>
                    <tr>
                        <td><img src="images/user.gif" height="35"><br/>Kitty</td>
                        <td>#Useful packing list even for those who have went on exchange before!</td>
                        <td>Oct 15, 2014 08:34:23 PM</td>
                    </tr>
                    <tr>
                        <td colspan="3" ></td>
                    </tr>
                    <tr>
                        <td colspan="3" ></td>
                    </tr>
                    <tr>
                        <td><img src="images/user.gif" height="35"><br/>Mich</td>
                        <td>Great for first time #exchange #student</td>
                        <td>Oct 15, 2014 08:34:23 PM</td>
                    </tr>
                    <tr>
                        <td colspan="3" ></td>
                    </tr>
                    <%
                        if (!hasReview) {
                    %>
                    <tr>
                        <td colspan="3" ></td>
                    </tr>
                    <tr>
                        <td><img src="images/user.gif" height="35"><br/>Lily</td>
                        <td>Reminded me what I forgot to bring for my upcoming exchange #usefulreminders</td>
                        <td>Oct 11, 2014 15:23:12</td>
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
        function showTable1(img) 
        {
            if(img.src.match("images/minimise.png")){
                img.src = "images/maximise.png";
            }else {
               img.src = "images/minimise.png";
           }
           $("#box1").slideToggle();
        }
        function showTable2(img) 
        {
            if(img.src.match("images/minimise.png")){
                img.src = "images/maximise.png";
            }else {
               img.src = "images/minimise.png";
           }
           $("#box2").slideToggle();
        }
        function showTable3(img) 
        {
            if(img.src.match("images/minimise.png")){
                img.src = "images/maximise.png";
            }else {
               img.src = "images/minimise.png";
           }
           $("#box3").slideToggle();
        }
        function showTable4(img) 
        {
            if(img.src.match("images/minimise.png")){
                img.src = "images/maximise.png";
            }else {
               img.src = "images/minimise.png";
           }
           $("#box4").slideToggle();
        }

        function showTable5(img) 
        {
            if(img.src.match("images/minimise.png")){
                img.src = "images/maximise.png";
            }else {
               img.src = "images/minimise.png";
           }
           $("#box5").slideToggle();
        }
        
        function diffImage(img) 
        {
            if(img.src.match("images/thumbUpBlack.png")){
                img.src = "images/thumbUp.png";
            }else {
               img.src = "images/thumbUpBlack.png";
           }
           document.forms['likeForm'].submit() ;
        }

    </script>
</body>

</html>
