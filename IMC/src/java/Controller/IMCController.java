/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.DAO;
import Model.IMC;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author vilar
 */
@WebServlet(name = "IMCController", urlPatterns = {"/IMCController", "/CalcularIMC"})
public class IMCController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getServletPath();
        DAO acao = new DAO();
        IMC modelo = new IMC();

        modelo.setAltura(Double.parseDouble(request.getParameter("txtAltura")));
        modelo.setSexo(request.getParameter("txtSexo"));

        double resultado = 0;

        if (modelo.getSexo().equals("HOMEM")) {
            resultado = acao.calcularIMCHomem(modelo);
        } else if (modelo.getSexo().equals("MULHER")) {
            resultado = acao.calcularIMCMulher(modelo);
        } else {
            System.out.println("Sexo não mencionado!");
        }
        response.sendRedirect("index.jsp?resultado=" + resultado);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
