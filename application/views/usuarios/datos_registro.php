
<?php

echo "<div class='col-sm-10'><h5>Datos Personales:</h5><b>Nombre:</b>";
echo $data_user[0]->nombres . "<br>";
echo "<b>Apellidos:</b>" . $data_user[0]->apellidos . "<br>";
echo "<b>Email:</b>" . $data_user[0]->email;
?>