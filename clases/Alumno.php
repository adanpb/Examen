<?php
    Class Alumno {
           private $idp;
           private $pregunta;
           private $ido;
           private $nombreo;
           private $r;

        public function showUsuario (){
            $user=$_COOKIE['usuario'];
            $buser = "SELECT concat (Nombre, ' ', ApellidoPaterno, ' ', ApellidoMaterno) as nalumno FROM usuario Where id=$user";
            $executeb = mysql_query($buser) or die ("Error en consulta de concaternar nombre de usuario");
            $this->nombre = mysql_result($executeb,0,'nalumno');
            echo $this->nombre;
        }
        public function showCuestionario(){
            //echo "readCuestionario";
            $sqlsc = "SELECT * FROM preguntas ORDER BY RAND() LIMIT 10";
            //$sqlsc = "SELECT * FROM preguntas ORDER BY id asc";
            $resultsc = mysql_query($sqlsc) or die ("Error en consulta 0");
            $cont=0;
            echo"
            <center>
                <div>
                    <form name=alumnog action=resultados method=Post name=accion target='_self'>";
                        while($field = mysql_fetch_array($resultsc)){
                            $this->idp = $field['id'];
                            $this->pregunta =$field['pregunta'];
                            $this->respuesta =$field['respuesta'];
                            $cont = $cont + 1;

                            echo"
                                <dl>
                                  <dt>$cont $this->pregunta     <input type='hidden' name=p[] value=$this->idp >     <input type='hidden' name='r$cont' value=$this->respuesta >    </dt>";
                                        $sqlso = "SELECT * FROM opciones where idp=$this->idp order by id asc";
                                        $resultso = mysql_query($sqlso) or die ("Error en consulta de opciones");
                                        while($field2 = mysql_fetch_array($resultso)){
                                            $this->ido = $field2['id'];
                                            $this->nombreo =$field2['nombre'];
                                            $this->o =$field2['n'];
                                            echo"
                                            <dd>
                                                    <input type='radio' name='ido$cont' value='$this->ido' required > $this->nombreo <br>
                                                    <input type='hidden' name='o$cont' value=$this->o >
                                            </dd>
                                            ";
                                        }
                                    echo"
                                </dl>";
                        }
                        echo"
                        <input type=submit name=submit value=Evaluar class='btn btn-info'> </input>
                    </form>
                </div>
             </center>";
        }

        public function compararResultados(){
            //$ido1 = $_POST['ido1'];
            $count2=0;
            $nn = 0;
            if ($_SERVER["REQUEST_METHOD"] == "POST") {
                $numero=$_POST["p"];
                $count = count($numero);
                for ($i = 0; $i < $count; $i++) {
                    $count2 = $count2+1;
                    $numero[$i];
                    $ido = $_POST['ido'.$count2];
                    $sqlbo = "SELECT * FROM opciones WHERE id=$ido";
                    $resultbo = mysql_query($sqlbo) or die ("Error en consulta cedfe");
                    $opcion = mysql_result($resultbo,0,'n');
                    $noop = mysql_result($resultbo,0,'nombre');
                    $iddd = mysql_result($resultbo,0,'idp');

                    $sqlbo1 = "SELECT * FROM preguntas WHERE id=$iddd";
                    $resultbo1 = mysql_query($sqlbo1) or die ("Error en consulta cedtrtgtrgfe");
                    $nop = mysql_result($resultbo1,0,'pregunta');
                    $resp = mysql_result($resultbo1,0,'respuesta');

                    echo"
                    <dl>
                      <dt>$count2 $nop</dt>
                      <dd>$noop";
                        if($opcion==$resp){
                            $nn = $nn+1;
                            echo"<img src='../mvc/bootstrap/img/acierto.jpg'>";
                        }
                        else{
                            echo"<img src='../mvc/bootstrap/img/tache.jpg'>";
                        }

                    echo"</dd>
                    </dl>";
                }
            }


            $user=$_COOKIE['usuario'];
            $idal=$user;
            $sqlbo2 = "SELECT * FROM resultexamen WHERE ida=$idal";
            $resultbo2 = mysql_query($sqlbo2) or die ("Error en consulta cedtrtgtrgfe");
            $hay = mysql_num_rows($resultbo2);
            if($hay==0){
                $inster =  "INSERT INTO resultexamen (ida, aciertos) VALUES ('$idal','$nn')";
                $execute3 = mysql_query($inster) or die ("Error en consulta cedtrtgtrfdgdggfe");
                echo"<h2>Tu promedio es de: $nn</h2>";
            }
            else{
                $anterior = mysql_result($resultbo2,0,'aciertos');
                echo"<h3>Promedio anterior: $anterior</h3>";
                if($nn > $anterior){
                    $update =  "UPDATE resultexamen SET aciertos='$nn' WHERE ida=$idal";
                    $executeupdate = mysql_query($update) or die ("Error en consulta update");
                    echo"<h2>Tu promedio es de: $nn. el promedio se a actualizado en la base de datos </h2>";
                }
                else{
                    echo"<h2>Tu promedio es de: $nn. El promedio no se actualizo </h2>";
                }
            }

        }
    }
?>