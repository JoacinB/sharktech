<html>
<head>
  <title>Altas</title>
</head>
<body>
  <?php
  $conexion = mysqli_connect("localhost", "root", "", "login") or
    die("Problemas con la conexión");
  mysqli_query($conexion, "insert into alumnos(nombre,mail,codigocurso) values 
                       ('$_REQUEST[nombre]','$_REQUEST[mail]',$_REQUEST[codigocurso])")
    or die("Problemas en el select" . mysqli_error($conexion));
  mysqli_close($conexion);
  include("home.php");
  echo "El alumno fue dado de alta.";
  ?>
</body>
</html>
