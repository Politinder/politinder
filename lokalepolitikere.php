<?php
include 'db_con.php';
?>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
<title>En for alle | Kommunal og regionsvalg 2017</title>
    <link rel="stylesheet" href="simplegrid.css">
    <link rel="stylesheet" href="stylesheet.css">
</head>
    
<body>
    
    <div class= "grid grid-pad">
 <div class="col-4-12" style="padding-right: 0;">
    
    <div class="col-1-1">
        <div class=" content overskrift"><h3>Læs mere om dine lokale politikere.</h3></div></div>    
        
    <div class="col-4-12">
        <div class="mini"><img src="img/kandidat8.jpg"></div></div>
      
    <div class="col-4-12">
        <div class="mini"><img src="img/kandidat7.jpg"></div> </div>
    
     <div class="col-4-12">
         <div class="mini"><img src="img/kandidat6.jpg"></div></div>
      
    <div class="col-4-12">
        <div class="mini"><img src="img/kandidat5.jpg"></div></div>
      
     <div class="col-4-12">
         <div class="mini"><img src="img/kandidat4.jpg"></div> </div>
    
     <div class="col-4-12">
         <div class="mini"><img src="img/kandidat3.jpg"></div></div>
      
    <div class="col-4-12">
        <div class="mini"><img src="img/kandidat2.jpg"></div></div>
     
    <div class="col-4-12">
        <div class="mini"><img src="img/kandidat2.png"></div> </div>
    
     <div class="col-4-12">
         <div class="mini"><img src="img/kandidat.jpg"></div></div>
    
    <div class="col-4-12">
        <div class="mini"><img src="img/kandidat.jpg"></div></div>
      
    <div class="col-4-12">
        <div class="mini"><img src="img/kandidat8.jpg"></div> </div>
        
    <div class="col-4-12" style="padding-right:10px; margin-bottom: -10px;">
        <div class="mini"><img src="img/kandidat8.jpg"></div> </div>
    </div>
    
    <div class="col-6-12"></div>    
    
    
<a href="enforalle.php">
    <div class="col-2-12">
    <div class="content tekst2"><h3>Tilbage</h3> </div>
    </div></a>
    
    <div class="col-8-12" style="padding-right: 0;">
    
    <div class="col-2-12">
    <div class="content pil1"></div></div> 
        
    <div class="col-8-12">
    <div class="content data">
<?php
						
       $sql = "SELECT name, town, parti,  FROM politiker"; 
		
$result = mysqli_query ($mysqli, $sql) or die (mysqli_error($mysqli)); 

if($row = mysqli_fetch_array($result)){
	echo $row['name'] . "<br>";
  	echo $row['town'] . "<br>";
 	echo $row['parti'] . "<br>";
  	//echo $row[''] . "<br>";
  	//echo $row[''] . "<br>";
}
  else{
  	return null;
  }
 ?>
	</div></div> 
        
    <div class="col-2-12" style="padding-right:10px; margin-bottom: -10px;">
    <div class="content pil2"></div></div> 
        </div>
        
    <div class="col-1-1">
    <div class="footer">© | En for alle, Kommunal og regionsvalg 2017</div>
    </div>
    
      
    </div>
</body>
</html>