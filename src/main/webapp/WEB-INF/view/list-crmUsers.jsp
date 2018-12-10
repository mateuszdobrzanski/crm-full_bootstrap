<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
	<title></title>

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>
</head>

<body>

	<jsp:include page="nav.jsp"/>

	<div class="container">
		
		<table>
			<tr>
				<th>username</th>
			</tr>
			<c:forEach var="tempcrmUser" items="${crmUsers}">
			
			<tr>
				<td> ${tempcrmUser.userName} </td>
			</tr>
			
			</c:forEach>
		</table>
	</div>
	
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
</body>

</html>










