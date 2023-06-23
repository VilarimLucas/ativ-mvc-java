<%-- 
    Document   : index
    Created on : 17 de jun. de 2023, 23:50:12
    Author     : vilar
--%>
<%@ include file="referencias.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Biblioteca</title>

        <%@ include file="./css/style.jsp" %>
    </head>
    <body class="body-login">
        <div class="login-container text-white">
            <form class="login-form" action="Auth" method="POST">
                <h2 class="text-center"><i class="bi bi-book-half"></i> BIBLIOTECA</h2>
                <hr>
                <div class="form-group">
                    <label for="username"><i class="bi bi-person-badge-fill"></i> Usuário</label>
                    <input type="text"  class="form-control" id="userName" name="userName" placeholder="Digite seu usuário">
                </div>
                <div class="form-group">
                    <label for="password"><i class="bi bi-key-fill"></i> Senha</label>
                    <input type="password" class="form-control" id="password" name="password" placeholder="Digite sua senha">
                </div>
                <br>
                <button type="submit" class="btn btn-light btn-block">Entrar</button>
            </form>
        </div>
    </body>
</html>
