<?php
require ('templete/header.php');
?>
    <center>
            <form name="form1" action ='valida.php' method = 'POST' role='form'> <br>
                <table>
                    <tr>
                        <td>

                            <label>Correo:</label>
                        </td>
                        <td>
                            <input type='text' name='usuario' title='Digíta tu login' placeholder='Login' onKeyUp='cadena(this.value,cad1);vNom(this);'>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Password:</label>
                        </td>
                        <td>
                            <input type="password" name='password1' placeholder='********' title='Digíta tu contraseña' onKeyUp='passwordinicio(this.value,passwo);vNom(this);'>
                        </td>
                    </tr>
                    <tr>
                        <td colspan=2>
                            <input class="botontodo" type='submit' value='Ingresar'>
                        </td>
                    </tr>
                </table>
            </form>
        <?php
            if(isset($_REQUEST['msg'])){
                $msg = $_REQUEST['msg'];
                echo "<font size='5' face='Imprint MT Shadow'> $msg  </font>";
            }else{
                $msg = 0;
            }
        ?>
    </center>
<?php
require ('templete/footer.php');
?>