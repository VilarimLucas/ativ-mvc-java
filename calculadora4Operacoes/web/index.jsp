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
        <title>Calculadora 4 Operações</title>
        
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
                            <h5 class="card-title">Calculadora</h5>
                            <p class="card-text">Abaixo estão os campos dos valores</p>
                            <form action="Somar" method="POST">    

                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="basic-addon1">Valor &nbsp;<i class="bi bi-1-square-fill"></i></span>
                                    <input type="text"  name="txtVal1" class="form-control" placeholder="Digite o valor 1" aria-label="txtVal1" aria-describedby="basic-addon1">
                                </div>

                                <div class="input-group mb-3">
                                    <span class="input-group-text" id="basic-addon1"> Valor &nbsp;<i class="bi bi-2-square-fill"></i></span>
                                    <input type="text"  name="txtVal2" class="form-control" placeholder="Digite o valor 2" aria-label="txtVal1" aria-describedby="basic-addon1">
                                </div>

                                <input type="submit" name="btnSomar" value="SOMAR" class="btn btn-success" />
                                <input type="submit" name="btnSub" value="SUBTRAIR" class="btn btn-primary" />
                                <input type="submit" name="btnMult" value="MULTIPLICAR" class="btn btn-danger" />
                                <input type="submit" name="btnDiv" value="DIVIDIR" class="btn btn-light" /><!-- comment -->
                            </form>

                        </div>
                    </div>
                    <br>


                    <div class="alert alert-success" role="alert">
                        <b>Resultado:</b> 
                    </div>

                </div>
            </div>
        </div>
        
        
        
        
        
    </body>
</html>
