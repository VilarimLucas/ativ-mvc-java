<%-- 
    Document   : index
    Created on : 24 de jun. de 2023, 11:16:35
    Author     : vilar
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculo IMC</title>

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
                    <div class="card text-bg-primary mb-3" style="text-align: left">
                        <div class="card-body">
                            <h5 class="card-title">Calculo do IMC</h5>
                            <p class="card-text">Abaixo estão os campos para informar a Altura e o SEXO</p>

                            <form action="CalcularIMC" method="POST">    

                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="basic-addon1">Altura &nbsp;<i class="bi bi-person-lines-fill"></i></span>
                                    <input type="text"  name="txtAltura" class="form-control" placeholder="Qual a sua altura?" aria-label="txtVal1" aria-describedby="basic-addon1" required />
                                </div>

                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="basic-addon1"> SEXO <i class="bi bi-gender-ambiguous"></i></span>
                                    <select name="txtSexo" class="form-control form-select" aria-label="op" aria-describedby="basic-addon1" required>
                                        <option>HOMEM</option> 
                                        <option>MULHER</option>  
                                    </select>
                                </div>


                                <input type="submit" name="btnIMC" value="Calcular IMC" class="btn btn-outline-light" />
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
