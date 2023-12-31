/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import config.Conexao;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author vilar
 */
public class DAO {

    Statement st = null;
    ResultSet rs = null;

    /**
     * **********
     * ABAIXO ESTÃO OS MÉTODOS PARA USUÁRIOS
     *
     * @param user
     * @return
     * @throws SQLException
     */
    // Autenticação de usuário
    public UserModel autenticarUsuario(UserModel user) throws SQLException {
        st = new Conexao().conectar().createStatement();
        rs = st.executeQuery("select * from tbusuario where usuario ='" + user.getUsuario() + "' and senha='" + user.getSenha() + "'");
        if (rs.next()) {
            if (rs.getString(1).equals(user.getUsuario()) && rs.getString(2).equals(user.getSenha())) {
                user.setNivel(Integer.parseInt(rs.getString(3)));
                System.out.println("usuário Autenticado com sucesso");
                user.setAutenticado(true);
            } else {
                System.out.println("usuário Autenticado com sucesso");
                user.setAutenticado(false);
            }
        }
        return user;
    }

    /**
     * **********
     * FIM USUÁRIOS
     */
    /**
     * **********
     * ABAIXO ESTÃO OS MÉTODOS PARA AUTORES
     *
     * @param user
     * @return
     * @throws SQLException
     */
    public ResultSet listarAutores() throws SQLException {
        st = new Conexao().conectar().createStatement();
        rs = st.executeQuery("Select * from tbautor ORDER BY nomeAutor ASC;");
        return rs;
    }

    /**
     * **********
     * FIM AUTORES
     */
}
