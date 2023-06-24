<%-- 
    Document   : index
    Created on : 24 de jun. de 2023, 13:04:43
    Author     : alexs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculo do Volume</title>

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
                    <div class="card text-bg-secondary mb-3" style="text-align: left">
                        <div class="card-body">
                            <h5 class="card-title">Calculo do Volume</h5>
                            <p class="card-text"></p>

                            <form action="CalcularVolume" method="POST">    

                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="basic-addon1">Altura &nbsp;</span>
                                    <input type="text"  name="txtAltura" class="form-control" placeholder="Qual a altura?" aria-label="txtAltura" aria-describedby="basic-addon1" required />
                                </div>
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="basic-addon1">Comprimento &nbsp;</span>
                                    <input type="text"  name="txtComprimento" class="form-control" placeholder="Qual o Comprimento?" aria-label="txtComprimento" aria-describedby="basic-addon1" required />
                                </div>
                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="basic-addon1">Largura &nbsp;</span>
                                    <input type="text"  name="txtLargura" class="form-control" placeholder="Qual a largura?" aria-label="txtLargura" aria-describedby="basic-addon1" required />
                                </div>



                                <input type="submit" name="btnVol" value="Calcular Volume" class="btn btn-outline-light" />
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
