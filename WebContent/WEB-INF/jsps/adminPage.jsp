<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin page</title>
<link href="${pageContext.request.contextPath}/static/lib/bootstrap/css/bootstrap.css"
	rel="stylesheet" />
</head>
<body>
	<div class="container">
		<div class="col-md-12">
			<h4>
				<span class="badge badge-primary">You are an administrator.</span>
			</h4>

			<table class="table table-striped table-bordered table-hover">
				<caption>List of notices</caption>
				<thead class="thead-light">
					<tr>
						<th scope="col">#</th>
						<th scope="col">Username</th>
						<th scope="col">Email</th>
						<th scope="col">Authority</th>
						<th scope="col">Enabled</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="user" items="${users}" varStatus="usersLoop">
						<tr>
							<th scope="row"><c:out value="${usersLoop.count}"></c:out></th>
							<td><c:out value="${user.getUsername()}"></c:out></td>
							<td><c:out value="${user.getEmail()}"></c:out></td>
							<td><c:out value="${user.getAuthority()}"></c:out></td>
							<td><c:out value="${user.isEnabled()}"></c:out></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

		</div>
	</div>
</body>
</html>