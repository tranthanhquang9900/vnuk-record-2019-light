<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib tagdir = "/WEB-INF/tags" prefix ="vnuk"%>
<head>
<meta charset="UTF-8">
<title>Adding Contact</title>
<link rel="stylesheet"  type="text/css" href="css/jquery-ui.css">
<script type="text/javascript" src ="js/jquery.js"></script>
<script type="text/javascript" src ="js/jquery-ui.js"></script>
</head>
<body>
	
	<c:import url="header.jsp" />
	<h1>Adding a contact</h1>
	
	<form action="addContact" method="POST">
        	<div>
        		<label for="name">Name: </label>
            	<input type="text" name="name" id="name">
            </div>
            
        	<div>
        		<label for="email">E-mail: </label>
            	<input type="text" name="email" id="email">
            </div>
            
        	<div>
        		<label for="address">Address: </label>
            	<input type="text" name="address" id="address">
            </div>
            
        	<!-- <div>
        		<label for="date-of-birth">Date of Birth: </label>
            	<input type="text" name="date_of_birth" id="date-of-birth">
            	<script>$("#date-of-birth").datepicker({dateFormat:'dd/mm/yy'});</script>
            </div> -->
            
            <vnuk:myDateField label="Date of Birth" name="date_of_birth" id="date-of-birth"></vnuk:myDateField>
            
            <input type="submit" value="Save" />
        </form>
	<c:import url="footer.jsp" />
</body>
</html>