/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import models.Item;
import models.ItemManager;

/**
 *
 * @author Samsung
 */
public class SavePackingList extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            String packingListName = request.getParameter("packingListName");
            String packingListAttribute = request.getParameter("packingListAttribute");
            out.print(packingListName);

            out.print(packingListAttribute);
            HttpSession session = request.getSession();
            ItemManager im = (ItemManager) session.getAttribute("itemMgr");

            if (packingListAttribute != null && !packingListAttribute.equalsIgnoreCase("")) {
                HashMap<String, ArrayList<Item>> myPackingLists = im.retrievePackingList();
                if (myPackingLists.size() > 0) {
                    for (String plName : myPackingLists.keySet()) {
                        if (plName.equalsIgnoreCase(packingListAttribute)) {
                            response.sendRedirect("MyPackingLists.jsp");
                        }
                    }
                }
                ArrayList<Item> itemList = im.retrieve(packingListAttribute);
                myPackingLists.put(packingListName, itemList);
                session.setAttribute("itemMgr", im);
                response.sendRedirect("MyPackingLists.jsp");
                // ArrayList<String>(String)request.getParameter();
            /*String clothes1 = request.getParameter("clothes1");
                 String place = request.getParameter("shanghai");
                 int clothesqty1 = Integer.parseInt(request.getParameter("clothesqty1"));
                 double clothestotalweight1 = Double.parseDouble(request.getParameter("clothestotalweight1"));
                 ItemManager im = new ItemManager();
                 String destination = request.getParameter("dest");
                 String packingList = request.getParameter("packingList");
          
                 request.setAttribute(destination,"destination");
                 request.setAttribute(packingList,"packingList");
                 ArrayList<Item> cheukyShanghai2 = im.retrieve(destination);
                 im.AddPackList("CheukyShanghai2", cheukyShanghai2);
                 RequestDispatcher rd = request.getRequestDispatcher("MyPackingLists.jsp");
                 rd.forward(request, response);*/
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
