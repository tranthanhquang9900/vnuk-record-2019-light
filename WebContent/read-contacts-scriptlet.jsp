<%@ page language="java"
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    
    import="java.util.*,
	vn.edu.vnuk.record.dao.ContactDao,
	vn.edu.vnuk.record.model.Contact"
%>


<html>

    <body>

        <table>

            <% 	
                ContactDao dao = new ContactDao();
                List<Contact> contacts = dao.read();

                for (Contact contact : contacts ) {
            %>
                    <tr>
                        <td><%= contact.getName() %></td>
                        <td><%= contact.getEmail() %></td>
                        <td><%= contact.getAddress() %></td>
                        <td><%= contact.getDateOfBirth().getTime() %></td>
                    </tr>
            <% 	
                }
            %>

        </table>

    </body>

</html>