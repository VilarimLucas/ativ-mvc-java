<%-- 
    Document   : index
    Created on : 24 de jun. de 2023, 13:33:40
    Author     : alexs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculo Area</title>

        <!-- BOOTSTRAP STYLE -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

        <!-- BOOTSTRAP SCRIPT -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

        <!-- BOOTSTRAP ICONS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    </head>
    <body>
        <div class="container text-center">
            <div class="row align-items-start">
                <div class="col-md-6 offset-md-3">

                    <br>
                    <div class="card text-bg-warning mb-3" style="text-align: left">
                        <div class="card-body">
                            <h5 class="card-title">Calculo da Área</h5>
                            <p class="card-text"></p>

                            <form action="CalcularArea" method="POST">    

                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="basic-addon1">Altura &nbsp;</span>
                                    <input type="text"  name="txtAltura" class="form-control" placeholder="Qual a altura?" aria-label="txtAltura" aria-describedby="basic-addon1" required />
                                </div>
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="basic-addon1">Base Menor &nbsp;</span>
                                    <input type="text"  name="txtMenor" class="form-control" placeholder="Qual a base Menor?" aria-label="txtMenor" aria-describedby="basic-addon1" required />
                                </div>
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="basic-addon1">Base Maior &nbsp;</span>
                                    <input type="text"  name="txtMaior" class="form-control" placeholder="Qual a base Maior?" aria-label="txtMaior" aria-describedby="basic-addon1" required />
                                </div>



                                <input type="submit" name="btnarea" value="Calcular Área do Trapézio" class="btn btn-outline-light" />
                            </form>

                        </div>
                    </div>
                    <br>

                    <%
                        String resultado = request.getParameter("resultado");
                        String mg = request.getParameter("msg");

                    %> 

                    <div class="alert alert-success" role="alert">
                        <b>Resultado:</b> <%=resultado%>
                    </div>

                </div>
            </div>
        </div>

    </body>
</html>
