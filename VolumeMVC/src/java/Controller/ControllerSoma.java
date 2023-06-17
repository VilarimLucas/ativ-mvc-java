/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.DAO;
import Model.VolumeModel;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author alexs
 */
@WebServlet(name = "ControllerSoma", urlPatterns = {"/ControllerSoma","/Somar"})
public class ControllerSoma extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String action = request.getServletPath();
        if(action.equals("/Somar"))
        {
            DAO acao = new DAO();
            VolumeModel modelo = new VolumeModel();
            
            modelo.setValor1(Integer.parseInt(request.getParameter("txtVal1")));
            modelo.setValor2(Integer.parseInt(request.getParameter("txtVal2")));
            modelo.setValor3(Integer.parseInt(request.getParameter("txtVal3")));
            int resultado = acao.CalculaValor(modelo);
            response.sendRedirect(  "index.jsp?resultado=" + resultado);
        }
        
        
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
