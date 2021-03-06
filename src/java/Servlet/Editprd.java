/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Controller.ProductController;
import Model.MainModel;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Laksamana Zaidan
 */
public class Editprd extends HttpServlet {

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
      try {
            String id = request.getParameter("id");
            
            ProductController mc = new ProductController();
            MainModel model = mc.show(id);
            
            request.setAttribute("product", model);
            RequestDispatcher dispatch = request.
                    getRequestDispatcher("/views/admin/edit.jsp");
            dispatch.forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Editprd.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            String id = request.getParameter("id");
            String name = request.getParameter("name");
            String category = request.getParameter("category");
            String stocks = request.getParameter("stock");
            String prices = request.getParameter("price");
            String pic = request.getParameter("pic");
            String detail = request.getParameter("detail");
            int stock = Integer.parseInt(stocks);
            int price = Integer.parseInt(prices);
            
            MainModel model = new MainModel();
            model.setId(id);
            model.setName(name);
            model.setCategory(category);
            model.setStock(stock);
            model.setPrice(price);
            model.setPic(pic);
            model.setDetail(detail);
            
            
            ProductController mc = new ProductController();
            boolean check = mc.update(model);
            
            if(check) {
                response.sendRedirect("prdList");
            }
        } catch (SQLException ex) {
            Logger.getLogger(Editprd.class.getName()).log(Level.SEVERE, null, ex);
    }

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
