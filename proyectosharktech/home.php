<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menu</title>
    <link rel="stylesheet" href="css/home.css">
    <link rel="stylesheet" href="css/cabecera.css">
    


    
</head>
<link rel="icon" type="image/vnd.microsoft.icon" href="favicon.ico">



<body>
    <h1>Alta de Alumnos</h1>
    <br><br>
    <form action="altas.php" method="post">
        <p>Nombre</h1>
        <input type="text" name="nombre"><p>
        <p>Correo electrónico</h1>
        <input type="text" name="mail"><p>
        <p>Seleccione el curso:</p>
        <select name="codigocurso">
            <option value="1">Informatica</option>
            <option value="2">Administracion</option>
            <option value="3">Carpinteria</option>
        </select>
        <br>
        <input type="submit" value="Registrar">
    </form>
</body>
