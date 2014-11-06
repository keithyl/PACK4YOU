<%-- 
    Document   : Inspiration
    Created on : Oct 3, 2014, 3:39:48 PM
    Author     : Samsung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PACK4YOU - Inspiration</title>
         <script>
            var _uxa = _uxa || [];
(function() {
   var uxa = document.createElement("script"); uxa.type = "text/javascript"; uxa.async = true;
   uxa.src = "//www.uxarmy.com/test/js";
   document.getElementsByTagName("head")[0].appendChild(uxa);
})();
</script>
    </head>
    <body>
        <%@include file="includes/Inspiration.jsp"%>
        <%@include file="includes/InitiateItemManager.jsp"%>
        <br/>
        <br/>
        <br/>
        <%
            String err = (String) session.getAttribute("errorMsg");
            if (err == null) {
                err = "";
            } else {
                session.removeAttribute("errorMsg");
            }
        %>
        <div class="InspirationForm">
            <h1><div class="InspirationTitle">
                Inspiration
            </div></h1>
            <p/>
            <form action="ViewInspirations.jsp">
                <label id="first">
                    <span class="glyphicon glyphicon-plane"  style="font-size: 20px"></span>
                    <input type="text" name="destination" placeholder="Destination" required width="100"><br>
                </label>
                <br/>
                <input class="BlueButton" type="submit" value="Inspire me!">
            </form>
            <br/>
            <div class="ErrorMessage">
                <%=err%>
            </div>
        </div>
    </body>
</html>
