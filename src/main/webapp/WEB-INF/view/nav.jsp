<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>

<body>

	<nav class="navbar navbar-expand-md navbar-light bg-light">
	    <a class="navbar-brand" href="${pageContext.request.contextPath}/customer/list">Name</a>
	    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsingNavbar">
	        <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="navbar-collapse collapse" id="collapsingNavbar">
	        <ul class="navbar-nav">
	            <li class="nav-item dropdown">
			        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
			          Dropdown
			        </a>
			        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
			          <a class="dropdown-item" href="#">Action</a>
			          <a class="dropdown-item" href="#">Another action</a>
			          <div class="dropdown-divider"></div>
			          <a class="dropdown-item" href="#">Something else here</a>
			        </div>
     			</li>
	            <li class="nav-item">
	                <a class="nav-link" href="#">Link</a>
	            </li>
	            <security:authorize access="hasAnyRole('ADMIN')">
		            <li class="nav-item dropdown">
				        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				          Administration
				        </a>
				        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
				          <a class="dropdown-item" href="${pageContext.request.contextPath}/register/showRegistrationForm">Register New User</a>
				          <a class="dropdown-item" href="#">List App Users</a>
				        </div>

	     			</li>
     			</security:authorize>
	        </ul>
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item dropdown">
		        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		         <security:authentication property="principal.username" />
		        </a>
		        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
			        <form:form action="${pageContext.request.contextPath}/logout" 
					   method="POST">
					   	<input type="submit" value="Logout" class="dropdown-item" />
				     </form:form>
		        </div>
		      </li>
        	</ul>
	    </div>
	</nav>
	<br/>
	<br/>
	
</body>

</html>










