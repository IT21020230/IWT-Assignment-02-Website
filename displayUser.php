<?php
    //Linking the configuration file
    require 'config.php';
?>

<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<title>Superfit | ADMIN</title>
	<link rel="stylesheet" href="css/template.css">
	<link rel="stylesheet" href="css/displayUser.css">

	<!--Bootstrap website link to get social media icons(use.fontawesome.com)-->
	<link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.13.0/css/all.css"
      integrity="sha384-Bfad6CLCknfcloXFOyFnlgtENryhrpZCe29RTifKEixXQZ38WheV+i/6YWSzkz3V"
      crossorigin="anonymous"
    />

	<script>
		
		function delete_data($id) {

			if(confirm('Are you sure you want to delete this record?')) {
				windows.location.href = 'deleteRecord.php?id='+id;
			}
		}
	</script>

</head>

<body>

	<!--navigation bar-->
	
	<nav>
		<div class="logo"><img  src="images/SuperFITe.png " height="88px" width="88px"></div>
		<ul>
			<li><a href="home.php">Home</a></li>
			<li><a href="about-us.html">About Us</a></li>
			<div class="dropdown">
			<button class="dropbtn">Gallery 
			<i class="fa fa-caret-down"></i>
		</button>
		<div class="dropdown-content">
		<a href="Gallery.html">Photo Gallery</a>
		<a href="#">Video Gallery</a>
      
		</div>
		</div>
			<li><a href="BMI.php">Classes</a></li>
			<li><a href="contact.html">Contact Us</a></li>
			<div class="dropdown">
				<button class="dropbtn">Profile
				<i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
			<a href="user.php">User</a>
			<a href="iprofile.html">Instructor</a>
		  
			</div>		
		</div>

		<div class="shop-cart">
			<a href="cart.html" target="_blank"><i class="fa fa-cart-plus">Cart</i></a>
			
		</div>	
	</nav>


    
    <br/><br/>
    <center><h1 class="topic">User records</h1></center>
    <br/><br/>


    <center>
    <div class = "User_table">
    <table width = "80%" border="2" style="color: white; border:2px solid #46b307;">

   <tr>
	<th class = "col2">First_Name</th>
    <th class = "col3">Last_Name</th>
    <th class = "col4">Gender</th>
    <th class = "col5">Age</th>
	<th class = "col6">Mobile_Number</th>
    <th class = "col7">Email</th>
    <th class = "col8">Address</th>
    <th class = "col9">Health_Issues</th>
    <th class = "col10">Password</th>
	<th class = "col11">Edit</th>
	<th class = "col12">Delete</th>
   </tr>
   
   <?php

    $sql = "SELECT * FROM register_table";
    $result = $con->query($sql);

    if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {

			$id = $row["ID"];

            echo "<tr>";
                echo "<tr>";
                echo "<td>".$row["First_Name"]."</td>";
                echo "<td>".$row["Last_Name"]."</td>";
                echo "<td>".$row["Gender"]."</td>";
				echo "<td>".$row["Age"]."</td>";
                echo "<td>".$row["Mobile_Number"]."</td>";
                echo "<td>".$row["Email"]."</td>";
                echo "<td>".$row["Address"]."</td>";
                echo "<td>".$row["Health_Issues"]."</td>";
                echo "<td>".$row["Password"]."</td>";
				echo "<td><button type='submit'><a href='editRecord.php?id=$id'>Edit</a></button></td>";
				echo "<td><button type='submit'><a href='deleteRecord.php?id=$id'>Delete<a/></button></td>";
            echo "</tr>";
          }
        
      } else {
        echo "No results found";
      }   
   
    ?>
   </table>
   </div>

   <br/><br/><br/><button class="dis"><a href="adminadd.php">Add User</a></button>
</center>




	


	<hr class = "line-before-footer">
	<footer>
		<div class="footer_content">
			<div class="center_details">
				<ul class="details">
					<li>Contact : 071-8569875</li>
					<li>Email : superfit@gmail.com</li>
					<li>Address : No,10 Galle Road, Colombo 02</li>
					<li>Branches : Kadawatha 
					</li> 
					
				</ul>
				
			</div>
			<div class="left_col">
				<h2>Newsletter</h2>
				<div class="border"></div>
				<p>Enter your Email to get News and Updates</p>
				<form action="" class="newsletter_form">
					<input type="Email" class="txt" placeholder="Enter Email" name="">
					<input type="submit" class="btn" value="Submit" name="">
					
				</form>
			</div>
			<div class="footer_links">
				<h4>Quick Links</h4>
				<ul>
					<li><a href="home.php">Home</a></li>
							<li><a href="Gallery.html">Gallery</a></li>
							<li><a href="contact.html">Contact Us</a></li>
							<li><a href="displayFAQuser.php">FAQ</a></li>
							<li><a href="classes.php">Classes</a></li>
					
				</ul>
			</div>
				
			</div>
			
			<div class="social">
				<a href="https://www.facebook.com" target="_blank"><i class="fab fa-facebook-f"></i></a>
				<a href="#" target="_blank"><i class="fab fa-instagram"></i></a>
				<a href="https://www.youtube.com/" target="_blank"><i class="fab fa-youtube"></i></a>
				<a href="#" target="_blank"><i class="fab fa-twitter"></i></a>				
			</div>
			
		</div>
		<div class="footer_bottom">
			<p>All right reserved<br/>Copyright &copy;2021 SuperFit </p>
			
		</div>
	</footer>

</body>
</html>