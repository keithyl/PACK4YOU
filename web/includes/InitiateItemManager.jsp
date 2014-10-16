<%@page import="models.*"%>
<%@page import="java.util.*"%>

<%
    ItemManager im = (ItemManager) session.getAttribute("itemMgr");
    if (im == null) {
        im = new ItemManager();
        session.setAttribute("itemMgr", im);
    }
    
    
%>