<%@page import="models.*"%>
<%@page import="java.util.*"%>

<%
    ItemManager im = (ItemManager) session.getAttribute("itemMgr");
    if (im == null) {
        im = new ItemManager();
        session.setAttribute("itemMgr", im);
    }
    HashMap<String,String> review = new HashMap<String, String>();
    //review.put("This reminds me about the #passport that I missed!", new Date().toLocaleString());
    session.setAttribute("review", review);
    
%>