<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <header>
	<nav class="navbar navbar-expand-lg navbar-light" id="nav">
		<div class="container-fluid">
			<a href="index.jsp"><img class="logo" alt="proviso-logo" src="./img/logo.png"></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse justify-content-center" id="navbar">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="./reservation/newreservation.jsp">Reservations</a></li>
					<li class="nav-item"><a class="nav-link" href="loyaltypoints.jsp">Loyalty Points</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="about.jsp">About Us</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="contact.jsp">Contact Us</a></li>
				</ul>
			</div>
			
			<div class="user_auth">
				<a class="btn" href="login.jsp" role="button"><i class="fa-solid fa-user">Sign in or Join</i></a>
				

				
			
			</div>
		</div>
	</nav>
	
	<hr id="hr-line">
</header>