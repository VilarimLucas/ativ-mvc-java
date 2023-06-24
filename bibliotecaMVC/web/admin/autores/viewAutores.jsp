<%-- 
    Document   : viewAutores
    Created on : 23 de jun. de 2023, 12:35:05
    Author     : vilar
--%>

<%@page import="Model.AutorModel"%>
<%@page import="java.util.List"%>
<%@ include file="../../referencias.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@ include file="../../css/style.jsp" %>
    </head>
    <body>
        <%@ include file="../header.jsp" %>
        <div class="container text-center">
            <div class="row header-vew-autor">
                <div class="col-sm-5 col-md-6"><a class="btn btn-success">Cadastrar Autor</a></div>
                <div class="col-sm-5 offset-sm-2 col-md-6 offset-md-0">
                    <div class="input-group mb-3">
                        <button class="btn btn-outline-secondary" type="button" id="button-addon1"><i class="bi bi-search"></i></button>
                        <input type="text" class="form-control" placeholder="" aria-label="Example text with button addon" aria-describedby="button-addon1">
                    </div>
                </div>
            </div>
            <div class="row align-items-start content-view-autor">
                <div class="col">
                    <div class="container text-center">
                        <div class="row align-items-start">
                            <div class="col">
                                <div class="card border-light mb-3">
                                    <div class="card-header">AUTORES</div>
                                    <div class="card-body">
                                        <h5 class="card-title"> </h5>
                                        <p class="card-text">veja todos os Autores cadastrados abaixo.</p>
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th scope="col">#</th>
                                                    <th scope="col">AUTORES</th>
                                                    <th scope="col">EDITAR</th>
                                                    <th scope="col">EXCLUIR</th>
                                                </tr>
                                            </thead>
                                            <tbody>

                                                <%
                                                    List<AutorModel> autores = (List<AutorModel>) request.getAttribute("autores"); // obtenha a lista de autores do atributo do request

                                                    for (AutorModel autor : autores) {
                                                %>
                                                <tr>
                                                    <td><%= autor.getCodAutor()%></td> <!-- Use os getters corretos da sua classe Autor -->
                                                    <td><%= autor.getNomeAutor()%></td> <!-- Use os getters corretos da sua classe Autor -->
                                                    <td><a href="#" class="btn btn-primary">Editar</a></td><!-- comment -->
                                                    <td><a href="#" class="btn btn-danger">Excluir</a></td><!-- comment -->
                                                </tr>
                                                <% }%>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <%@ include file="../footer.jsp" %>
    </body>
</html>
