<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
 <head>
    <meta charset="utf-8">
<title>En for alle | Kommunal og regionsvalg 2017</title>
    <link rel="stylesheet" href="simplegrid.css">
    <link rel="stylesheet" href="stylesheet.css">
</head>
    <body>
        <div class= "grid grid-pad">
    <div class="col-2-12">
    <div class="logo"></div>
    </div>
            
   
            
    <div class="col-8-12">
        <div class="content tekst"><center><h2>Velkommen til Københavns Kommune</h2><p><h4>Valget finder sted den 21. november 2017.</h4></center></div>
    </div>    
    
     <a href="enforalle.php">
    <div class="col-2-12">
    <div class="content tekst2"><h3>Tilbage</h3> </div>
    </div></a>
		<?php
		$cmd = filter_input(INPUT_POST, 'cmd');
		$name = filter_input(INPUT_POST, 'name');
		$phonenb = filter_input(INPUT_POST, 'phonenb');
		$town_n = filter_input(INPUT_POST, 'town_n');
		
		if(empty($cmd)){
			?>
                              <div class="col-1-3" style="padding-right: 0;">
    
    <div class="col-1-1">
    <div class="kalenderbillede"><img src="kalender.png"></div></div> 
    
    <div class="col-1-1" style="padding-right:10px; margin-bottom: -10px;">
    <div class="content tekst3">Se hvor din lokale politikere opholder sig op til kommunalvalget. Tilmeld dig kalenderen og bliv opdateret, på din mobil, hvor dine politikere opholder sig og hvilke events de deltager i.</div> </div>
    </div>
    <div class="col-1-3" style="padding-right: 0;">
    
    <div class="col-1-1">
    <div class=" content politinder"></div></div> 
    
    <div class="col-1-1" style="padding-right:10px; margin-bottom: -10px;">
    <div class="container">
    
    
		<form action="<?=$_SERVER['PHP_SELF']?>" method="post">
			<fieldset>
				<legend>Tilmeld dig opdateringer om din lokal politiker</legend><br>
				<input type="text" name="name" placeholder="Name"><br>
				<input type="test" name="phonenb" placeholder="Telefonnr."><br>
				<input type="text" name="town_n" placeholder="By"><br>
				<button type="submit" name="cmd" value="Tilmeld">Tilmeld</button>
				<button type="submit" name="cmd" value="Afmeld">Afmeld</button>
				
		</fieldset>
		</form>
        </div></div>
	</div>
		<?php
	}
	else {
		if($cmd == 'Tilmeld') {
			require_once('db_con.php');
			$sql = 'INSERT INTO news (name, phonenb, town_n) VALUES (?, ?, ?)';
			$stmt = $con->prepare($sql);
			$stmt->bind_param('sss', $name, $phonenb, $town_n);
			$stmt->execute();
			
			if ($stmt->affected_rows > 0){
				echo 'Du er nu tilmeld dig opdateringer om din lokal politiker';
			}
			else {
				echo $email.' Du var allerede p� listen';
			}
		}

		if($cmd == 'Afmeld') {
			require_once('db_con.php');
			$sql = 'DELETE FROM news WHERE name=? AND phonenb=? AND town_n=?';
			$stmt = $con->prepare($sql);
			$stmt->bind_param('sss', $name, $phonenb, $town_n);
			$stmt->execute();
			
			if ($stmt->affected_rows > 0){
				echo 'Du er nu fjernet ';
			}
			else {
				echo $email.' Du har ikke tilmeldt dig opdateringen';
			}
		}

		//echo '<hr><a href="index.php"> Tilbage</a>';
	}
	
?>
        
            <div class="col-1-1">
        <div class=" footer"><br> © | En for alle, Kommunal og regionsvalg 2017</div>
    </div>
      

      
    </div>

    </body>	
</html>