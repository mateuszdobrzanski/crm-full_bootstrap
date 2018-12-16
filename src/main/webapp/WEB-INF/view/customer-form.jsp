<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
	<title>Karta pracownika</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>
		  
	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/datepicker.min.css"/>			  
</head>

<body>

	<jsp:include page="nav.jsp"/>

	<div class="container">
	
	<p class="h1">Karta pracownika</p>
	<hr>
	<form:form action="saveCustomer" modelAttribute="customer" method="POST">

			<!-- need to associate this data with customer id -->
			<form:hidden path="id" />
							
			  <div class="row">
			    <div class="col">
			    	<p class="h5">Dane personalne:</p>
			    	<hr>
			     	<label>Imię: </label><form:input class="form-control" path="firstName" />
			     	<label>Nazwisko: </label><form:input class="form-control" path="lastName" />
			     	<label>Płeć: </label><form:input class="form-control" path="sex" />
			     	<label>Stan cywilny: </label><form:input class="form-control" path="martialStatus" />
			     	<label>Nazwisko rodowe: </label><form:input class="form-control" path="maidenName" />
			    </div>
			    <div class="col">
			    	<p class="h5">&zwnj;</p><br>
			      	<label>Data urodzenia: </label><form:input type="text" data-toggle="datepicker" class="form-control" path="birthDate"/>
			      	<label>Miejsce urodzenia: </label><form:input class="form-control" path="cityOfBirth" />
			      	<label>Kraj urodzenia: </label><form:input class="form-control" path="country" />
			      	<label>Narodowość: </label><form:input class="form-control" path="nationality" />
			      <br>
			    </div>
			  </div>
			  
			  <br><hr><br>
			  
			  <div class="row">
			    <div class="col">
			    	<p class="h5">Dane identyfikacyjne:</p>
			    	<hr>
			    </div>
			    <div class="col">
			    </div>
			  </div>
			  
			  <div class="row">
			    <div class="col">
			      	<label>Email: </label><form:input class="form-control" path="email" />
			     	<label>Telefon: </label><form:input class="form-control" path="telephoneNumber" />
			    </div>
			    <div class="col">
			      	<label>Nr paszportu: </label><form:input class="form-control" path="passportNumber" />
			     	<label>PESEL: </label><form:input class="form-control" path="pesel" />
			     	<label>NIP: </label><form:input class="form-control" path="nip" />
			    </div>
			    <div class="col">
			      	<label>Imię ojca: </label><form:input class="form-control" path="fatherName" />
			     	<label>Imię matki: </label><form:input class="form-control" path="motherName" />
			     	<label>Nazwisko rodowe matki: </label><form:input class="form-control" path="motherMaidenName" />
			    </div>
			  </div>
			  <br><br>
			  <input type="submit" class="btn btn-primary" value="Zapisz pracownika" />
		</form:form>
		<br>
		<p>
			<a href="${pageContext.request.contextPath}/customer/list"><button type="button" class="btn btn-secondary">Powrót do menu</button></a>
		</p>
		
	
	</div>
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/datepicker.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/i18n/datepicker.pl-PL.js"></script>
	<script>
    $(function() {
      $('[data-toggle="datepicker"]').datepicker({
        autoHide: true,
        zIndex: 2048,
        language: 'pl-PL',
        format: 'yyyy-mm-dd'
      });
    });
  </script>
</body>

</html>










