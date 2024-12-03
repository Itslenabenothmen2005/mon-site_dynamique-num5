<?php
$cnx=mysqli_connect("localhost","root","","bd_lina") or die("pb cnx");//connection à la base
$h=$_POST["D1"];
$acc=$_POST['R1'];
$rest=$_POST['R2'];
$ext=0;
if(isset($_POST["C1"])) $ext=$ext+4;
if(isset($_POST["C2"])) $ext=$ext+2;
if(isset($_POST["C3"])) $ext=$ext+1;
$d=date("Y-m-d");//tjbd date b forme année mois jour
$req1="select * from evaluation where idhotel='$h' and dateeval='$d';";
$res=mysqli_query($cnx,$req1) or die("pb req1: ".mysqli_error($cnx));//thez l requet lel base de donnée
if(mysqli_num_rows($res)>0)
    die("cet hotel est déja évalué!");
$req2="insert into evaluation values('$d','$h','$acc','$rest','$ext');";
$res=mysqli_query($cnx,$req2) or die("pb req2:".mysqli_error($cnx));
if(mysqli_affected_rows($cnx)>0)
    echo("evaluation enregistrée avec succès");
//tache 2
$req3="select NomHotel,avg(NoteAcceuil),avg(NoteRest),avg(NoteExtra) from hotel as h ,evaluation as e where h.idhotel=e.idhotel group by h.idhotel;";
$res=mysqli_query($cnx,$req3) or die("pb req3: ".mysqli_error($cnx));//thez l requet lel base de donnée
echo(" <table><tr> <th>N°</th><th>Hotel</th><th>acceuil</th><th>Restauration</th> <th>Extra</th></tr> ");

$i=0;
while($t=mysqli_fetch_array($res)){
    $i=$i+1;
    echo("<tr><td>$i</td><td>$t[0]</td>0
    <td>$t[1]</td><td>$t[2]</td><td>$t[3]</td></tr>");    
}
echo("</table>");

mysqli_close($cnx);
?>

