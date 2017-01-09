<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<meta charset="utf-8">
<title>Register</title>
<style>
.error {
	color: #ff0000;
	font-style: italic;
	font-weight: bold;
}
</style>
</head>
<body>
	<div id="registerUserForm">
		<form:form action="registerUser" commandName="user" method="POST" autocomplete="off">

			<table>
				<tr>
					<td>Username</td>
					<td><form:input path="username" /></td>
					<td><form:errors path="username" cssClass="error" /></td>
				</tr>
				<tr>
					<td>Password</td>
					<td><form:input path="password" /></td>
					<td><form:errors path="password" cssClass="error" /></td>
				</tr>
				<tr>
					<td>Firstname</td>
					<td><form:input path="firstname" /></td>
					<td><form:errors path="firstname" cssClass="error" /></td>
				</tr>

				<tr>
					<td>Lastname</td>
					<td><form:input path="lastname" /></td>
					<td><form:errors path="lastname" cssClass="error" /></td>
				</tr>
				
				<tr>
					<td>Phone</td>
					<td><form:input path="phone" /></td>
					<td><form:errors path="phone" cssClass="error" /></td>
				</tr>
				
				<tr>
					<td>Birthday</td>
					<td><form:input path="dob" placeholder="dd/mm/yyyy" /></td>
					<td><form:errors path="dob" cssClass="error" /></td>
				</tr>
				
				<tr>
					<td>Email</td>
					<td><form:input path="email" placeholder="xxx@yyy.zzz" /></td>
					<td><form:errors path="email" cssClass="error" /></td>
				</tr>

				<tr>
					<td>
						<button type="submit" value="Submit">Submit</button>
						<button type="reset" value="Reset">Reset</button>
					</td>
				</tr>
			</table>
		</form:form>
	</div>
</body>
</html>
