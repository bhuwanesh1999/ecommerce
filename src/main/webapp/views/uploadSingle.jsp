<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="false" %>
<html>
<body>
<h1>Single File Upload</h1>
	<form method="post" enctype="multipart/form-data" action="${pageContext.request.contextPath}/singleSave">
		Upload File: <input type="file" name="file">
		<br /><br />
		Description: <input type="text" name="desc"/>
		<br/><br/><input type="submit" value="Upload"> 
	</form>
</body>
</html> 