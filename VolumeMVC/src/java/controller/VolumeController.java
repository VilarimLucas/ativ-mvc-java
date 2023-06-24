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
import model.DAO;
import model.VolumeModel;

/**
 *
 * @author alexs
 */
@WebServlet(name = "VolumeController", urlPatterns = {"/VolumeController", "/CalcularVolume"})
public class VolumeController extends HttpServlet {
@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        DAO acao = new DAO();
        VolumeModel modelo = new VolumeModel();

        modelo.setLargura(Double.parseDouble(request.getParameter("txtLargura")));
        modelo.setAltura(Double.parseDouble(request.getParameter("txtAltura")));
        modelo.setComprimento(Double.parseDouble(request.getParameter("txtComprimento")));
        double resultado = acao.calcularVolume(modelo);
        response.sendRedirect("index.jsp?resultado=" + resultado);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
