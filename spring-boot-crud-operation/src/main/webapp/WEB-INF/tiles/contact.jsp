<script>
	function formValidation() {
		var firstName = document.getElementById("firstName").value;
		var lastName = document.getElementById("lastName").value;
		var mobileNumber = document.getElementById("mobileNumber").value;

		var email = document.getElementById("email").value;

		if (firstName == "") {
			alert("Please Enter First Name.")
			return false;
		} else if (lastName == "") {
			alert("Please Eeter Last Name.")
			return false;
		} else if (mobileNumber == "") {
			alert("Please Enter 10 digit Mobile Number.");
			return false;
		} else if (email == "") {
			alert("Please Enter Email Address.");
			return false;

		}
		return true;
	}
</script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="con" %>  
<con:out value="${data}"/>  

<div class="container-fluid bg-light">
	<div class="row ">
		<div class="col bg-white" style="margin: 50px;">
			<div
				style="padding: 50px; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);">
				<form action="/submitContcat" 
					onSubmit="return formValidation();" method="get">
					<div class="row  ">
						<div class="col-md-6 mb-3">
							<label for="firstName" class="form-label">First Name</label> <input
								type="text" class="form-control" id="firstName" name="firstName"
								placeholder="Enter your first name">
						</div>
						<div class="col-md-6 mb-3">
							<label for="lastName" class="form-label">Last Name</label> <input
								type="text" class="form-control" id="lastName" name="lastName"
								placeholder="Enter your last name">
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="mobileNumber" class="form-label">Mobile
								Number</label> <input type="text" class="form-control" id="mobileNumber"
								name="mobileNumber" placeholder="Enter your mobile number">
						</div>
						<div class="col-md-6 mb-3">
							<label for="email" class="form-label">Email</label> <input
								type="email" class="form-control" id="email" name="email"
								placeholder="Enter your email address">
						</div>
					</div>
					<div class="row">
						<div class="col-md-12 mb-3">
							<label for="message" class="form-label">Message</label>
							<textarea class="form-control" id="message" rows="3"
								name="message" placeholder="Enter your message"></textarea>
						</div>
					</div>
					<button type="submit" class="btn btn-primary">Submit</button>
				</form>
				<div class="m-2">
					<h4>
						<b>Contact Information</b>
					</h4>
				</div>
				<ul class="custom-list m-2">
					<li><i class="fas fa-map-marker-alt"></i><b>Add:</b> S.No.
						111/1/2, Opp. Indira Institute, Off New Pune-Mumbai Highway,
						Wakad, Pune, Maharashtra 411057</li>
					<li><i class="fas fa-envelope"></i>info@indiranationalschool.ac.in</li>
					<li><i class="fas fa-phone"></i>020-66731707 / 626</li>
				</ul>


			</div>

		</div>
		<div class="col">

			<div style="margin-top: 100px;">
				<h3>
					<b>How can i help you?</b>
				</h3>
			</div>
			<p style="line-height: 1.5">You cannot teach a child any more
				than you can grow a plant. The plant develops its own nature. The
				child also teaches itself. But you can help it to go forward in its
				own way. What you can do is not of a positive nature but negative.
				You can take away the obstacles and knowledge comes out of its own
				nature. Loosen the soil a little, so that it may come out easily.
				Put a hedge round it, see that it is not kitted by anything. You can
				supply the growing seed with the materials for the making up of its
				body, brining to it the earth, the water, the air that it wants. And
				there your work stops.</p>
			<div align="right">
				<span style="color: red;">- Swami Vivekanand </span>
			</div>
		</div>
	</div>
</div>
