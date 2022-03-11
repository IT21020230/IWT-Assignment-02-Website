<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<title>Superfit | ADMIN</title>
	<link rel="stylesheet" href="css/template.css">
	<link rel="stylesheet" href="css/adminadd.css">
	<!--Bootstrap website link to get social media icons(use.fontawesome.com)-->
	<link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.13.0/css/all.css"
      integrity="sha384-Bfad6CLCknfcloXFOyFnlgtENryhrpZCe29RTifKEixXQZ38WheV+i/6YWSzkz3V"
      crossorigin="anonymous"
    />

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





    <div class="form">
		<form method="POST" action="submitAdmin.php">

			<center><div class="Register-title">Add Users</div><br/><br/></center>
	
			<br/>
			<input type="text" name="firstName" placeholder="First Name" class="textbox" required><br/><br/>
	
			<br/>
			<input type="text" name="lastName" placeholder="Last Name" class="textbox" required><br/><br/><br/>
			
			Gender : <br/>
			<input type="radio" name="gender" value="M" checked>Male 
			<input type="radio" name="gender" value="F" >Female<br/><br/>
	
			<br/>
			<input type="phone" name="mobile" pattern="[0-9]{10}" placeholder="Mobile Number" class="textbox" required><br/><br/>
	
			<br/>
			<input type="email" name="email" placeholder="E-mail" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}" class="textbox" required><br/><br/><br/>
	
			Address:<br/>
			<textarea name="address" rows="8" cols="50" class="addressbox"></textarea><br/><br/><br/>
	
			<input type="number" name="age" placeholder="Age" class="textbox" required><br/><br/>
			
			<p class="health">If there are any health issues please mention them in the following box.</p><br/>
			Health issues : <br/>
			<textarea name="health" rows="8" cols="50" class="healthbox"></textarea><br/><br/>

			<br/>
			
			<input type="password" name="pwd" class="textbox" placeholder="Password" required><br/><br/>
	
			<br/>
			<input type="password" name="rpwd" class="textbox" placeholder="Re-enter Password" required><br/><br/><br/><br/>

			<center>
				<input type="submit" name="submitBtn" id="submitBtn" class="register" value="Add User"><br/><br/><br/>
		    </center>
		
		</form>
	</div>

    
    <br/><br/>
    <center><button class="dis"><a href="displayUser.php">Update User</a></button></center>

	<br/><br/>
	<h3><a href="logout.php">Logout</a></h3>


	


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