<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title>Signature Master Data</title>
</head>
<style>
/* Add custom styles if needed */
.center-box {
	border: 1px solid #ccc;
	background-color: zure;
	border-radius: 5px;
	height: 250px;
}

#image-container {
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	object-fit: cover;
}

.image-preview {
	width: 100%;
	height: 100%;
	object-fit: cover;
}

.custom-upload {
	position: relative;
	display: inline-block;
}

.custom-upload input[type="file"] {
	position: absolute;
	opacity: 0;
	width: 0;
	height: 0;
}

.custom-upload label {
	display: inline-block;
	padding: 10px 20px;
	background-color: #007bff;
	color: #fff;
	border: none;
	cursor: pointer;
	border-radius: 4px;
}

.custom-upload label:hover {
	background-color: #0056b3;
}

.custom-submit {
	padding: 10px 20px;
	background-color: green;
	color: #fff;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

.custom-submit:hover {
	background-color: #0056b3;
}

.custom-clear {
	padding: 10px 20px;
	background-color: red;
	color: #fff;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

.custom-clear:hover {
	background-color: aqua;
}
</style>
<body>
	<div class="container-fluid">
		<div style="padding: 15px;">
			<form>
				<div class="form-group row justify-content-center">
					<label for="inputPassword"
						class="col-md-2 col-form-label justify-content-center"><b>User
							Name :</b></label>
					<div class="col-md-4">
						<input type="text" class="form-control" id="username"
							placeholder="Enter User Name"> <input type="hidden"
							value="" id="userIndex">
					</div>
				</div>
			</form>
		</div>
		<div class="row justify-content-center">
			<div class="col-md-2"></div>
			<div class="col-md-4">
				<div class="center-box" id="centerBox">
					<div id="image-container"></div>
				</div>
				<div style="padding: 10px;">
					<div class="custom-upload">
						<input type="file" id="upload" accept="image/*"> <label
							for="upload">Choose Image</label> <input type="submit"
							value="Submit" class="custom-submit" onclick="submitSignature();">
						<input type="submit" value="Clear"
							onclick="return removeElement();" class="custom-clear">
					</div>
				</div>
			</div>
		</div>
	</div>

	<script>
        function submitSignature()
        {
            alert("submit in");
            var userIndex=document.getElementById("userIndex").value;
            var image = document.getElementById("image-preview");
            var signatureValue = image.getAttribute("src"); // Using getAttribute() method
            alert("signatureValue"+signatureValue);
            if(image=="")
            {
                alert("Please Upload Signature.")
                return false;

            }
            else if(userIndex=="")
            {
               alert("Please Select UserName.");
               return false;
            }
            console.log('Image Src:', signatureValue);
        }
		document
				.addEventListener(
						'DOMContentLoaded',
						function() {
							var upload = document.getElementById('upload');
							var imageContainer = document
									.getElementById('image-container');

							upload
									.addEventListener(
											'change',
											function(e) {
												removeElement();
												var files = e.target.files;
												const maxSizeInBytes = 100000;
												if (files) {
													for (var i = 0; i < files.length; i++) {
														var file = files[i];
														// console.log('File Name:', file.name);
														// console.log('File Size:', file.size, 'bytes');
														// console.log('File Type:', file.type);
														// console.log('Last Modified Date:', file.lastModifiedDate);

														if (file.size > maxSizeInBytes) {
															// Reset the file input to clear the selected file(s)
															upload.value = '';
															// Show an alert to the user
															alert('File size exceeds the maximum limit of 5KB.');
															// Stop further processing
															return;
														}
														var reader = new FileReader();
														reader.onload = function(
																e) {
															var image = document
																	.createElement('img');
															image.src = e.target.result;
															image.classList
																	.add('image-preview');
															image.id = "image-preview";
															//    image.style.filter = 'invert(100%)';
															image.style.backgroundColor = 'white'; // Set background color

															imageContainer
																	.appendChild(image);
															image.onload = function() {
																var height = this.naturalHeight;
																var width = this.naturalWidth;
																// console.log('Image Height:', height, 'pixels');
																// console.log('Image Width:', width, 'pixels');
																if (height >= 100
																		&& height <= 500) {

																	alert("Image height is  between 100 and 500 pixels.");
																} else {
																	alert('Height is not between 100 and 500 pixels.');
																	imageContainer
																			.removeChild(image); // Remove the image from the container
																	return;
																}
																if (width >= 100
																		&& width <= 1300) {

																	alert("Image width not between 500 and 1300 pixels.");

																} else {
																	alert("Image width is not between 500 and 1300 pixels.");
																	imageContainer
																			.removeChild(image); // Remove the image from the container
																	return;
																}

															};
														}

														reader
																.readAsDataURL(file);
													}
												}
											});
						});
		function removeElement() {
			const element = document.getElementById("image-preview");
			// You can use any valid CSS color value

			if (element == null) {
			} else {
				element.remove();
			}
		}
	</script>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>