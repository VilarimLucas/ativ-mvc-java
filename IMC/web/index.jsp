<%-- 
    Document   : index
    Created on : 17 de jun. de 2023, 14:26:01
    Author     : vilar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>IMC </title>

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
                    <div class="card border-light text-bg-dark mb-3" style="text-align: left">
                        <div class="card-body">
                            <h5 class="card-title text-center" >IMC (índice de Massa Corporal)</h5>
                            <p class="card-text ">Preencha os seguintes campos</p>
                            <form action="Somar" method="POST">    

                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="basic-addon1">Peso &nbsp;</span>
                                    <input type="text"  name="txtVal1" class="form-control" placeholder="Digite o seu peso" aria-label="txtVal1" aria-describedby="basic-addon1">
                                </div>

                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="basic-addon1"> Altura &nbsp;</span>
                                    <input type="text"  name="txtVal2" class="form-control" placeholder="Digite sua altura" aria-label="txtVal1" aria-describedby="basic-addon1">
                                </div>
                                <p class="card-text ">Selecione seu Gênero</p>
                                <input type="submit" name="btnMas" value="Masculino" class="btn btn-success" />
                                <input type="submit" name="btnFem" value="Feminino" class="btn btn-primary" />

                            </form>

                        </div>
                    </div>
                    <br>
                    <%

                    

                    %>


                    <div class="alert alert-success" role="alert">
                        <b>Resultado:</b> 
                    </div>

                </div>
            </div>
        </div>





    </body>
</html>
