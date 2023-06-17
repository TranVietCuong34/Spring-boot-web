<!-- để gõ được tiếng việt -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!-- import sf: spring-form -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Contact-us</title>
	 	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
		<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
 		<link rel="stylesheet" href="${base}/css/contactUs.css">
</head>

<body>
   <jsp:include page="/WEB-INF/views/customer/layout/header.jsp"></jsp:include>
	<div class="content">
	<!--cách 1: form đơn giản  -->
		 <%-- <form action="${base}/contact" method="post">
			<h1>Let's Get Started</h1>
			<div class="contentform">
				<div class="leftcontact">
					<div class="form-group">
						<p>
							Surname<span>*</span>
						</p>
						<span class="icon-case"><i class="fa fa-male"></i></span> <input
							type="text" name="firtName" id="nom" data-rule="required"
							data-msg="VÃÂ©rifiez votre saisie sur les champs : Le champ 'Nom' doit ÃÂªtre renseignÃÂ©." />
						<div class="validation"></div>
					</div>
					<div class="form-group">
						<p>
							Name <span>*</span>
						</p>
						<span class="icon-case"><i class="fa fa-user"></i></span> <input
							type="text" name="name" id="prenom" data-rule="required"
							data-msg="VÃÂ©rifiez votre saisie sur les champs : Le champ 'PrÃÂ©nom' doit ÃÂªtre renseignÃÂ©." />
						<div class="validation"></div>
					</div>
					<div class="form-group">
						<p>
							Age <span>*</span>
						</p>
						<span class="icon-case"><i class="fa-solid fa-clock"></i></span> <input
							type="text" name="age" id="adresse" data-rule="required"
							data-msg="VÃÂ©rifiez votre saisie sur les champs : Le champ 'Adresse' doit ÃÂªtre renseignÃÂ©." />
						<div class="validation"></div>
					</div>
					<div class="form-group">
						<p>
							E-mail <span>*</span>
						</p>
						<span class="icon-case"><i class="fa-solid fa-envelope"></i></span>
						<input type="email" name="email" id="email" data-rule="email"
							data-msg="VÃÂ©rifiez votre saisie sur les champs : Le champ 'E-mail' est obligatoire." />
						<div class="validation"></div>
					</div>
					<div class="form-group">
						<p>
							Address <span>*</span>
						</p>
						<span class="icon-case"><i class="fa fa-location-arrow"></i></span>
						<input type="text" name="address" id="adresse"
							data-rule="required"
							data-msg="VÃÂ©rifiez votre saisie sur les champs : Le champ 'Adresse' doit ÃÂªtre renseignÃÂ©." />
						<div class="validation"></div>
					</div>

				</div>

				<div class="rightcontact">
					<div class="form-group">
						<p>
							Postcode <span>*</span>
						</p>
						<span class="icon-case"><i class="fa fa-map-marker"></i></span> <input
							type="text" name="postal" id="postal" data-rule="required"
							data-msg="VÃÂ©rifiez votre saisie sur les champs : Le champ 'Code postal' doit ÃÂªtre renseignÃÂ©." />
						<div class="validation"></div>
					</div>
					<div class="form-group">
						<p>
							City <span>*</span>
						</p>
						<span class="icon-case"><i class="fa-solid fa-city"></i></i></span> <input
							type="text" name="city" id="ville" data-rule="required"
							data-msg="VÃÂ©rifiez votre saisie sur les champs : Le champ 'Ville' doit ÃÂªtre renseignÃÂ©." />
						<div class="validation"></div>
					</div>

					<div class="form-group">
						<p>
							Phone number <span>*</span>
						</p>
						<span class="icon-case"><i class="fa fa-phone"></i></span> <input
							type="text" name="phone" id="phone" data-rule="maxlen:10"
							data-msg="VÃÂ©rifiez votre saisie sur les champs : Le champ 'TÃÂ©lÃÂ©phone' doit ÃÂªtre renseignÃÂ©. Minimum 10 chiffres" />
						<div class="validation"></div>
					</div>

					<div class="form-group">
						<p>
							Message <span>*</span>
						</p>
						<span class="icon-case"><i class="fa-solid fa-message"></i></span>
						<textarea name="message" rows="14" data-rule="required"
							data-msg="VÃÂ©rifiez votre saisie sur les champs : Le champ 'Message' doit ÃÂªtre renseignÃÂ©."></textarea>
						<div class="validation"></div>
					</div>
				</div>
			</div>
			<button type="submit" class="bouton-contact">Send</button>

		</form> --%>
		
		
		<!-- Cách 2: spring-form  -->
		<!--modelAttribute="tên_class_muốn lấy dữ liệu"  -->
		<sf:form modelAttribute="contactUs" action="${base}/contact" method="post" enctype="multipart/form-data">
			<h1>Let's Get Started</h1>
			<div class="contentform">
				<div class="leftcontact">
					<div class="form-group">
						<p>
							FirstName<span>*</span>
						</p>
						<span class="icon-case"><i class="fa fa-male"></i></span>
						<sf:input path="firtName" type="text" name="firtName" id="idFirstName"
							data-rule="required"
							data-msg="VÃÂ©rifiez votre saisie sur les champs : Le champ 'Nom' doit ÃÂªtre renseignÃÂ©."></sf:input>
							
					</div>
					<div class="form-group">
						<p>
							Name <span>*</span>
						</p>
						<span class="icon-case"><i class="fa fa-user"></i></span>
						<sf:input path="name" type="text" name="name" id="idName"
							data-rule="required"
							data-msg="VÃÂ©rifiez votre saisie sur les champs : Le champ 'PrÃÂ©nom' doit ÃÂªtre renseignÃÂ©."></sf:input>
						
					</div>
					<div class="form-group">
						<p>
							Age <span>*</span>
						</p>
						<span class="icon-case"><i class="fa-solid fa-clock"></i></span>
						<sf:input path="age" type="text" name="age" id="idAge"
							data-rule="required"
							data-msg="VÃÂ©rifiez votre saisie sur les champs : Le champ 'Adresse' doit ÃÂªtre renseignÃÂ©."></sf:input>
							
					</div>
					<div class="form-group">
						<p>
							E-mail <span>*</span>
						</p>
						<span class="icon-case"><i class="fa-solid fa-envelope"></i></span>
						<sf:input path="email" type="email" name="email" id="idEmail"
							data-rule="email"
							data-msg="VÃÂ©rifiez votre saisie sur les champs : Le champ 'E-mail' est obligatoire."></sf:input>
							
					</div>
					<div class="form-group">
						<p>
							Address <span>*</span>
						</p>
						<span class="icon-case"><i class="fa fa-location-arrow"></i></span>
						<sf:input path="address" type="text" name="address" id="idAddress"
							data-rule="required"
							data-msg="VÃÂ©rifiez votre saisie sur les champs : Le champ 'Adresse' doit ÃÂªtre renseignÃÂ©."></sf:input>
							
					</div>

				</div>

				<div class="rightcontact">
					<div class="form-group">
						<p>
							Postcode <span>*</span>
						</p>
						<span class="icon-case"><i class="fa fa-map-marker"></i></span>
						<sf:input path="postal" type="text" name="postal" id="idPostcode"
							data-rule="required"
							data-msg="VÃÂ©rifiez votre saisie sur les champs : Le champ 'Code postal' doit ÃÂªtre renseignÃÂ©."></sf:input>
							
					</div>
					<div class="form-group">
						<p>
							City <span>*</span>
						</p>
						<span class="icon-case"><i class="fa-solid fa-city"></i></i></span>
						<sf:input path="city" type="text" name="city" id="idCity"
							data-rule="required"
							data-msg="VÃÂ©rifiez votre saisie sur les champs : Le champ 'Ville' doit ÃÂªtre renseignÃÂ©."></sf:input>
							
					</div>

					<div class="form-group">
						<p>
							Phone number <span>*</span>
						</p>
						<span class="icon-case"><i class="fa fa-phone"></i></span>
						<sf:input path="phone" type="text" name="phone" id="idPhone"
							data-rule="maxlen:10"
							data-msg="VÃÂ©rifiez votre saisie sur les champs : Le champ 'TÃÂ©lÃÂ©phone' doit ÃÂªtre renseignÃÂ©. Minimum 10 chiffres"></sf:input>
						
					</div>

					<div class="form-group">
						<p>
							Message <span>*</span>
						</p>
						<span class="icon-case"><i class="fa-solid fa-message"></i></span>
							<sf:textarea path="message" class="form-control" name="message" id="idMessage" rows="6"></sf:textarea>
							
					</div>
					<div class="form-group">
						<p>
							Chọn file
						</p>
						<input type="file"  class="form-control" name="contactUsFile" id="fileContact" ></input>
							
					</div>
				</div>
			</div>
			<button type="submit" class="bouton-contact">Send</button>

			</sf:form>      
	
	
		<!-- Cách 3: ajax  -->
	<!--   <form id ="configform">
			<h1>Let's Get Started</h1>
			<div class="contentform">
				<div class="leftcontact">
					<div class="form-group">
						<p>
							FirtName<span>*</span>
						</p>
						<span class="icon-case"><i class="fa fa-male"></i></span> <input
							type="text" name="firtName" id="idfirtName" data-rule="required"
							data-msg="VÃÂ©rifiez votre saisie sur les champs : Le champ 'Nom' doit ÃÂªtre renseignÃÂ©." />
						<div class="validation"></div>
					</div>
					<div class="form-group">
						<p>
							Name <span>*</span>
						</p>
						<span class="icon-case"><i class="fa fa-user"></i></span> <input
							type="text" name="name" id="idname" data-rule="required"
							data-msg="VÃÂ©rifiez votre saisie sur les champs : Le champ 'PrÃÂ©nom' doit ÃÂªtre renseignÃÂ©." />
						<div class="validation"></div>
					</div>
					<div class="form-group">
						<p>
							Age <span>*</span>
						</p>
						<span class="icon-case"><i class="fa-solid fa-clock"></i></span> <input
							type="text" name="age" id="idage" data-rule="required"
							data-msg="VÃÂ©rifiez votre saisie sur les champs : Le champ 'Adresse' doit ÃÂªtre renseignÃÂ©." />
						<div class="validation"></div>
					</div>
					<div class="form-group">
						<p>
							E-mail <span>*</span>
						</p>
						<span class="icon-case"><i class="fa-solid fa-envelope"></i></span>
						<input type="email" name="email" id="idemail" data-rule="email"
							data-msg="VÃÂ©rifiez votre saisie sur les champs : Le champ 'E-mail' est obligatoire." />
						<div class="validation"></div>
					</div>
					<div class="form-group">
						<p>
							Address <span>*</span>
						</p>
						<span class="icon-case"><i class="fa fa-location-arrow"></i></span>
						<input type="text" name="address" id="idaddress"
							data-rule="required"
							data-msg="VÃÂ©rifiez votre saisie sur les champs : Le champ 'Adresse' doit ÃÂªtre renseignÃÂ©." />
						<div class="validation"></div>
					</div>

				</div>

				<div class="rightcontact">
					<div class="form-group">
						<p>
							Postcode <span>*</span>
						</p>
						<span class="icon-case"><i class="fa fa-map-marker"></i></span> <input
							type="text" name="postal" id="idpostal" data-rule="required"
							data-msg="VÃÂ©rifiez votre saisie sur les champs : Le champ 'Code postal' doit ÃÂªtre renseignÃÂ©." />
						<div class="validation"></div>
					</div>
					<div class="form-group">
						<p>
							City <span>*</span>
						</p>
						<span class="icon-case"><i class="fa-solid fa-city"></i></i></span> <input
							type="text" name="city" id="idcity" data-rule="required"
							data-msg="VÃÂ©rifiez votre saisie sur les champs : Le champ 'Ville' doit ÃÂªtre renseignÃÂ©." />
						<div class="validation"></div>
					</div>

					<div class="form-group">
						<p>
							Phone number <span>*</span>
						</p>
						<span class="icon-case"><i class="fa fa-phone"></i></span> <input
							type="text" name="phone" id="idphone" data-rule="maxlen:10"
							data-msg="VÃÂ©rifiez votre saisie sur les champs : Le champ 'TÃÂ©lÃÂ©phone' doit ÃÂªtre renseignÃÂ©. Minimum 10 chiffres" />
						<div class="validation"></div>
					</div>

					<div class="form-group">
						<p>
							Message <span>*</span>
						</p>
						<span class="icon-case"><i class="fa-solid fa-message"></i></span>
						<textarea name="message" id = "idmessage" rows="14" data-rule="required"
							data-msg="VÃÂ©rifiez votre saisie sur les champs : Le champ 'Message' doit ÃÂªtre renseignÃÂ©."></textarea>
						<div class="validation"></div>
					</div>
					<div class="form-group">
						<p>
							Chọn file
						</p>
						<input type="file"  class="form-control" name="contactUsFile" id="fileContact" ></input>
							
					</div>
				</div>
			</div>
			<button type="button" onclick="submit_form_via_ajax();" class="bouton-contact" id = "send">Send</button>
		</form> 
		<script type="text/javascript">
		
									$('#send').click(function(){
		   								 $('#configform')[0].reset();
									});
									
			                		function submit_form_via_ajax() {
			                			 
			                			// tạo javascript object.  
			            				var data = {
		            						firstName: $("#idfirtName").val(),
		            						name: $("#idname").val(),
		            						age: $("#idage").val(),
		            						email: $("#idemail").val(),
		            						address: $("#idaddress").val(),
		            						postal: $("#idpostal").val(),
		            						city: $("#idcity").val(),
		            						phone: $("#idphone").val(),
		            						message: $("#idmessage").val(),
		            						
			            				};
			            				
			            				// $ === jQuery
			            				// json == javascript object
			            				jQuery.ajax({			     
			            					url:  "/contact",
			            					type: "post",						
			            					contentType: "application/json",
			            					data: JSON.stringify(data),
			            	
			            					dataType: "json", 
			            					success: function(jsonResult) {
			            						alert(jsonResult.statusMessage);
			            				
			            					},
			            					error: function(jqXhr, textStatus, errorMessage) {
			            						alert("error");
			            					}
			            				});
			                		}
			                	</script>  -->
		 
	
	
	
	
	</div>
		<jsp:include page="/WEB-INF/views/customer/layout/footer.jsp"></jsp:include>
</body>

</html>