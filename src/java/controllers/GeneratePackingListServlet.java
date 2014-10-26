/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.RequestDispatcher; 

/**
 *
 * @author Keith Leng
 */
public class GeneratePackingListServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession();
        
        try {
            //retrieve destination 
            String destination = request.getParameter("Destination");
            
            if(destination.equalsIgnoreCase("Shanghai")){               
                request.setAttribute("Destination","Shanghai");
               
                //RequestDispatcher rd = request.getRequestDispatcher("GeneratedPackingList.jsp");
                RequestDispatcher rd = request.getRequestDispatcher("GeneratedPackingList.jsp");
                rd.forward(request, response);
            } else if (destination.equalsIgnoreCase("Melbourne")){               
                request.setAttribute("Destination","Melbourne");
                RequestDispatcher rd = request.getRequestDispatcher("GeneratedPackingList.jsp");
                //RequestDispatcher rd = request.getRequestDispatcher("GeneratedPackingList_1.jsp");
                rd.forward(request, response);
            }else{
                session.setAttribute("errorMsg","Sorry... we do not support this destination :)");
                response.sendRedirect("Home.jsp");
            }
        }catch(Exception e){            
           e.getMessage();
        }
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request,response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
     /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void processRequest(HttpServletRequest request, HttpServletResponse response) {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
