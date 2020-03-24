<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sports R Us &mdash; Inventory</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div>
    <h2>Equipments On Hand</h2>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Description</th>
                <th>Price</th>
                <th>Color</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="listitem" items="${equipmentList}">
                <tr>
                    <td>${listitem.id}</td>
                    <td>${listitem.description}</td>
                    <td>$${listitem.price}</td>
                    <td>${listitem.color}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>