/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.AreaModel;
import model.DAO;

/**
 *
 * @author alexs
 */
@WebServlet(name = "AreaController", urlPatterns = {"/AreaController","/CalcularArea"})
public class AreaController extends HttpServlet {

  @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        DAO acao = new DAO();
        AreaModel modelo = new AreaModel();

        modelo.setAltura(Double.parseDouble(request.getParameter("txtAltura")));
        modelo.setBaseMenor(Double.parseDouble(request.getParameter("txtMenor")));
        modelo.setBaseMaior(Double.parseDouble(request.getParameter("txtMaior")));
        double resultado = acao.calcularArea(modelo);
        response.sendRedirect("index.jsp?resultado=" + resultado);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
