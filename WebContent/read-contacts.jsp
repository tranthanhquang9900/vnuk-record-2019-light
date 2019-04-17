<%@ page language="java" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    
     import="java.util.*,
	vn.edu.vnuk.record.dao.ContactDao,
	vn.edu.vnuk.record.model.Contact"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
	<c:import url="header.jsp" />
	
	<jsp:useBean class="vn.edu.vnuk.record.dao.ContactDao" id="dao"/>
	
	<table>

            		<c:forEach var="contact" items="${dao.read()}" varStatus="index">
            
                    <tr>
                        <td>${contact.name}</td>
                        <td>${contact.email}</td>
                        <td>${contact.address}</td>
                        <td>
                        <fmt:formatDate value="${contact.dateOfBirth.time}" pattern="dd/MM/yyyy"/>
                        </td>
                    </tr>

         </c:forEach>

        </table>
        
        <c:import url="footer.jsp" />
	
	</body>
</html>