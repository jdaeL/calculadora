#!C:\xampp\perl\bin\perl.exe
use strict;
use warnings;
use CGI;

my $q = CGI->new;

my $exp = $q->param('expresion');

#  $exp es la string de la expresion
my $res = eval($exp);


print "Content-type: text/html\n\n";
print <<ENDHTML;
<html>

<head>
    <meta charset="UTF-8">
    <link type="text/css" href="../css/style.css" rel="stylesheet" />
    <title>Resultado</title>
</head>

<body>
    <!-- Fondo de pantalla basado en video en bucle -->
    <video muted autoplay loop>
        <source src="../css/img/fondo.mp4" type="video/mp4">
    </video>

    <!-- Título de página -->
    <div>
        <h1> CALCULADORA DE EXPRESIONES REGULARES </h1>
    </div>
    <!-- Formulario -->
    <div>
            <!-- Ingresar la expresión completa -->
        <box> 
            <p> $res </p>

        </box>
        
            <!-- Acciones -->
            <h2>
                <a href="http://localhost/calculadora/index.html">  
                    <button> Volver a calcular una expresión</button>  
                </a>
            </h2>

    </div>
</body>

</html>
ENDHTML




