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
    </head>
    <body>
        <%@include file="includes/Header.jsp"%>

        <label id="page_title">
            <h5><font color="white">Inspiration</font></h5>
        </label>

        <%//@include file="includes/InspirationForm.jsp"%>
        <div class="form_inspiration">
            <form action="ViewInspirations.jsp">
                <label id="first">
                    <span class="glyphicon glyphicon-plane"  style="font-size: 20px"></span>
                    <input type="text" name="destination" placeholder="Destination"><br>
                </label>
                <label id="submit">
                    <input type="submit" value="Inspire me!">
                </label>
            </form>
        </div>
        
    </body>
</html>
