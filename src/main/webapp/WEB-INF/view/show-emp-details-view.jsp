<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

    <body style="text-align:center;">

        <h2>Добро пожаловать, дорогой!</h2>
        <br>
        <br>
        Ваше имя: ${employee.name} 
        <br>
        Ваша фамилия: ${employee.surname}
        <br>
        Ваша зарплата: ${employee.salary}
        <br>
        Ваш департамент: ${employee.department}
        <br>
        Ваша машина: ${employee.carBrand}
        <br>
        Язык(и):
        <ul>
            <c:forEach var="lang" items="${employee.languages}">
                <li> ${lang} </li>
                
            </c:forEach>
            
            
        </ul>
    </body>
</html>
