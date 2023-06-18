/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.DAO;
import Model.CalculadoraModel;
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
@WebServlet(name = "SomaController", urlPatterns = {"/SomaController", "/Operacao"})
public class OperacoesController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getServletPath();

        DAO acao = new DAO();
        CalculadoraModel modelo = new CalculadoraModel();

        modelo.setValor1(Integer.parseInt(request.getParameter("txtVal1")));
        modelo.setValor2(Integer.parseInt(request.getParameter("txtVal2")));
        modelo.setOperacao(request.getParameter("op"));
        double resultado = 0;

        if (modelo.getOperacao().equals("Soma")) {
            resultado = acao.calculaSoma(modelo);
        } else if (modelo.getOperacao().equals("Subtração")) {
            resultado = acao.calculaSub(modelo);
        } else if (modelo.getOperacao().equals("Multiplicar")) {
            resultado = acao.calculaMult(modelo);
        } else if (modelo.getOperacao().equals("Dividir")) {
            resultado = acao.calculaDiv(modelo);
        }

        response.sendRedirect("index.jsp?resultado=" + resultado + "&msg="+modelo.getMensagem());

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
