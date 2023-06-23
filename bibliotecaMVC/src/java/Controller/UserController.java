/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.DAO;
import Model.UserModel;
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
@WebServlet(name = "UserController", urlPatterns = {"/UserController", "/Auth"})
public class UserController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException{

        String action = request.getServletPath();
        // Objetos necessários para pegar as informações
        DAO acao = new DAO();
        UserModel user = new UserModel();

        if (action.equals("/Auth")) {
            try {

                // Pegando as informações da View da tela de login
                user.setUsuario(request.getParameter("userName"));
                user.setSenha(request.getParameter("password"));
                acao.autenticarUsuario(user);
                if (user.isAutenticado() == true) {
                    response.sendRedirect("./admin/home.jsp?usuario=" + user.getUsuario() + "&nivel=" + user.getNivel());
                } else {
                    System.out.println("Usuário não autenticado");
                }
            } catch (Exception e) {
                System.out.println(e);
            }
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
