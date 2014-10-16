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
                    <form id="useMeForm" name="useMeForm" method="get" action="GeneratedPackingList_1.jsp">
                        <input type="hidden" name="useMeList" id="useMeList" value="pinkyShanghai"/>
                        <input class="GreenButton" type="submit" name="submit" value="Use Me!">
                    </form>
                </td>
            </tr>
        </table>

        <br/>
        <!--[COUNTRY; WEATHER; PERIOD?]-->
        <br/>

        <%String popupErr = "Sorry... we are not implementing this :)";%>
        <center>
        <h3>Essentials</h3>
        <div class="PublicGeneratedTable">
            <table>
                <tr>
                    <td>Item</td>
                    <td>Quantity</td>
                    <td>Weight (in kg)</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Passport</td>
                    <td>1</td>
                    <td>0.1</td>
                    <td>
                        <form id="addItemFromOtherPackList" name="addItemFromOtherPackList" method="get" action="" 
                              onSubmit="if (!confirm('Are you sure you want to add item (Passport) to your list?')) {
                                return false;
                            }" >
                            <input type="hidden" name="addItemToMyList" id="addItemToMyList" value="Passpost,1,0.1,essential"/>
                            <input class="BlueButton" type="submit" name="submit" value="+ to My List">
                        </form>
                    </td>
                </tr>
            </table>
        </div>

        <h3>Clothing</h3>
        <div class="PublicGeneratedTable">
            <table>
                <tr>
                    <td>Item</td>
                    <td>Quantity</td>
                    <td>Weight (in kg)</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Shirts</td>
                    <td>8</td>
                    <td>2</td>
                    <td>
                        <input class="BlueButton" type="submit" value="+ to My List" onclick="alert('<%=popupErr%>');">
                        <!--<button id="acreate-user" class="BlueButton">+ to My List</button>
                        <input  id="create-user" class="BlueButton" type="button" value="+ to My List" >-->
                    </td>
                </tr>
                <tr>
                    <td>Jeans</td>
                    <td>8</td>
                    <td>4</td>
                    <td>
                        <input class="BlueButton" type="submit" value="+ to My List" onclick="alert('<%=popupErr%>');">
                    </td>
                </tr>
                <tr>
                    <td>Shoes</td>
                    <td>2</td>
                    <td>2</td>
                    <td>
                        <input class="BlueButton" type="submit" value="+ to My List" onclick="alert('<%=popupErr%>');">
                    </td>
                </tr>
                <tr>
                    <td>Undergarments</td>
                    <td>8</td>
                    <td>0.8</td>
                    <td>
                        <input class="BlueButton" type="submit" value="+ to My List" onclick="alert('<%=popupErr%>');">
                    </td>
                </tr>
                <tr>
                    <td>Slippers</td>
                    <td>1</td>
                    <td>0.2</td>
                    <td>
                        <input class="BlueButton" type="submit" value="+ to My List" onclick="alert('<%=popupErr%>');">
                    </td>
                </tr>
                <tr>
                    <td>Shorts</td>
                    <td>4</td>
                    <td>1</td>
                    <td>
                        <input class="BlueButton" type="submit" value="+ to My List" onclick="alert('<%=popupErr%>');">
                    </td>
                </tr>
                <tr>
                    <td>Caps</td>
                    <td>2</td>
                    <td>0.6</td>
                    <td>
                        <input class="BlueButton" type="submit" value="+ to My List" onclick="alert('<%=popupErr%>');">
                    </td>
                </tr>
            </table>
        </div>

        <h3>Hygiene</h3>
        <div class="PublicGeneratedTable">
            <table>
                <tr>
                    <td>Item</td>
                    <td>Quantity</td>
                    <td>Weight (in kg)</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Toiletries</td>
                    <td>1</td>
                    <td>0.5</td>
                    <td>
                        <input class="BlueButton" type="submit" value="+ to My List" onclick="alert('<%=popupErr%>');">
                    </td>
                </tr>
            </table>
        </div>

        <h3>Medication</h3>
        <div class="PublicGeneratedTable">
            <table>
                <tr>
                    <td>Item</td>
                    <td>Quantity</td>
                    <td>Weight (in kg)</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Medicine Box</td>
                    <td>1</td>
                    <td>0.4</td>
                    <td>
                        <input class="BlueButton" type="submit" value="+ to My List" onclick="alert('<%=popupErr%>');">
                    </td>
                </tr>
            </table>
        </div>
                    
        <h3>Electronics</h3>
        <div class="PublicGeneratedTable">
            <table>
                <tr>
                    <td>Item</td>
                    <td>Quantity</td>
                    <td>Weight (in kg)</td>
                    <td></td>
                </tr>
                <tr>
                    <td>Laptop</td>
                    <td>1</td>
                    <td>3</td>
                    <td>
                        <input class="BlueButton" type="submit" value="+ to My List" onclick="alert('<%=popupErr%>');">
                    </td>
                </tr>
                <tr>
                    <td>DSLR Camera</td>
                    <td>1</td>
                    <td>2.2</td>
                    <td>
                        <input class="BlueButton" type="submit" value="+ to My List" onclick="alert('<%=popupErr%>');">
                    </td>
                </tr>
                <tr>
                <tr>
                    <td>Chargers</td>
                    <td>3</td>
                    <td>0.6</td>
                    <td>
                        <input class="BlueButton" type="submit" value="+ to My List" onclick="alert('<%=popupErr%>');">
                    </td>
                </tr>
                <tr>
                    <td><strong>TOTAL</strong></td>
                    <td>44</td>
                    <td>19.3</td>
                    <td></td>
                </tr>
            </table>
        </div>
                    
        <h3>Total</h3>
        <div class="PublicGeneratedTable">
            <table>
                <tr>
                    <td>Quantity</td>
                    <td>Weight (in kg)</td>
                </tr>
                <tr>
                    <td>44</td>
                    <td>19.3</td>
                </tr>
            </table>
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
</body>
</body>
</html>
