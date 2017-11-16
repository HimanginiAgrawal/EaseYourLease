<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>First Web Application</title>
</head>

<body>
Here are the list of Apartments:
<table>
    <tr>
        <th>Name</th>
        <th>Address Line 1</th>
        <th>Address Line 2</th>
        <th>City</th>

    </tr>

<c:forEach items="${apartments}" var="apartment" >
    <tr>
        <td><a href="viewflattype?apartmentId"+${apartment.id}>${apartment.apartmentName}</a></td>
        <td>${apartment.adressLine1}</td>
        <td>${apartment.adressLine2}</td>
        <td>${apartment.city}</td>

    </tr>
</c:forEach>
</table>
</body>

</html>