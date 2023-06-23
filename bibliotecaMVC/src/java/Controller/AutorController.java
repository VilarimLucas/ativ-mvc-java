/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Model.AutorModel;
import Model.DAO;


// Importe as classes necessárias


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author vilar
 */
@WebServlet(name = "AutorController", urlPatterns = {"/AutorController"})
public class AutorController extends HttpServlet {

    private DAO autorDAO;

    @Override
    public void init() throws ServletException {
        // Inicialize sua classe DAO no método init()
        autorDAO = new DAO(); // substitua 'AutorDAO' pelo nome da sua classe DAO
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            ResultSet resultSet = autorDAO.listarAutores(); // chame o método listarAutores() da sua classe DAO

            // Converter o ResultSet em uma lista de objetos Autor
            List<AutorModel> autores = new ArrayList<>();
            while (resultSet.next()) {
                int codAutor = resultSet.getInt(Integer.parseInt(autorDAO.listarAutores().getString(1))); // substitua pelos nomes corretos das colunas no seu ResultSet
                String nomeAutor = resultSet.getString(autorDAO.listarAutores().getString(2)); // substitua pelos nomes corretos das colunas no seu ResultSet

                AutorModel autor = new AutorModel(); // substitua 'Autor' pelo nome da sua classe Model
                autor.setCodAutor(codAutor);
                autor.setNomeAutor(nomeAutor);
                autores.add(autor);
            }

            request.setAttribute("autores", autores); // armazene a lista de autores como atributo no request

            response.sendRedirect(contextPath + "/admin/autores/viewAutores.jsp");
        } catch (SQLException ex) {
            Logger.getLogger(AutorController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getServletPath();

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
