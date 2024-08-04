/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package control;

import entity.Account;
import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ADM
 */
@WebServlet(name="accounts", urlPatterns={"/accounts"})
public class accounts extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet accounts</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet accounts at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        //processRequest(request, response);
         List<Account> accounts = new ArrayList<>();
        accounts.add(new Account(1, "Huyen", "123456", 1, 1));
        accounts.add(new Account(2, "Anjolie", "SNZ6HE", 0, 1));
        accounts.add(new Account(3, "Ferris", "RXH3XJ", 0, 1));
        accounts.add(new Account(4, "Katell", "HWV8ZN", 0, 0));
        accounts.add(new Account(5, "Zahir", "NPX7OF", 1, 0));
        accounts.add(new Account(6, "Conan", "WIZ5VZ", 1, 0));
        accounts.add(new Account(7, "Cade", "ZSW2LU", 1, 0));
        accounts.add(new Account(8, "Micah", "RVV5SR", 0, 0));
        accounts.add(new Account(9, "Rowan", "VAI6XR", 1, 1));
        accounts.add(new Account(10, "Kirby", "DNX6JK", 1, 0));
        

        // Set the accounts attribute in the request scope
        request.setAttribute("accounts", accounts);

        // Forward the request to the JSP file
        RequestDispatcher dispatcher = request.getRequestDispatcher("Account.jsp");
        dispatcher.forward(request, response);

    }

    /** 
     * Handles the HTTP <code>POST</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
