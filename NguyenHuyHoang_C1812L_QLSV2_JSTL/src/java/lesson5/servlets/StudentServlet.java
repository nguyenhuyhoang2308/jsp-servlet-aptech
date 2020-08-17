/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lesson5.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import lesson5.modals.Student;

/**
 *
 * @author Asus
 */
public class StudentServlet extends HttpServlet {

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
        List<Student> studentList = new ArrayList<Student>();
        studentList.add(new Student("01", "Tran Van Diep", "Nam", "tranvandiep.it@gmail.com", "Nam Dinh"));
        studentList.add(new Student("02", "Tran Van Diep", "Nam", "tranvandiep.it@gmail.com", "Nam Dinh"));
        studentList.add(new Student("03", "Tran Van Diep", "Nam", "tranvandiep.it@gmail.com", "Nam Dinh"));
        studentList.add(new Student("04", "Tran Van Diep", "Nam", "tranvandiep.it@gmail.com", "Nam Dinh"));
        studentList.add(new Student("05", "Tran Van Diep", "Nam", "tranvandiep.it@gmail.com", "Nam Dinh"));
        studentList.add(new Student("06", "Tran Van Diep", "Nam", "tranvandiep.it@gmail.com", "Nam Dinh"));
        
        request.setAttribute("studentList", studentList);
        
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/lesson5/studentList.jsp");
        dispatcher.forward(request, response);
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
