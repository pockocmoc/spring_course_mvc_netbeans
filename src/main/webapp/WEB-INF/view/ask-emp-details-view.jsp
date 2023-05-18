<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

    <body style="text-align:center;">

        <h2>Уважаемый сотрудник, пожалуйста, заполните свои данные</h2>

        <br>
        <br>

        <form:form action ="showDetails" modelAttribute="employee">
            Name <form:input path ="name"/>
            <br><br>
            Surname <form:input path ="surname"/>
            <br><br>
            Salary <form:input path ="salary"/>
            <br><br>
            Department <form:select path="department">
                <form:options items="${employee.departments}"/>
            </form:select>
            <br><br>
            Какую машину вы хотите?
            BMW <form:radiobutton path="carBrand" value="BMW"/>
            AUDI <form:radiobutton path="carBrand" value="AUDI"/>
            MB <form:radiobutton path="carBrand" value="Mercedes-Benz"/>
            <br><br>

            Знание языка(ов)
            <form:checkboxes path="languages" items="${employee.languageList}"/>
            <br><br>

            <input type="submit" value="OK"/>
        </form:form>
    </body>

</html>
