<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>
    <title>Users Page</title>
    <link href="<c:url value="/css/style.css" /> " rel="stylesheet">
    <script src="<c:url value="/js/scrollup.js" /> "></script>




</head>
<body>

    <div id="content">

        <div id="header">
            <input id="searchField" class="input" type="text" placeholder="Search by name">
            <button class="bat" type="submit" onclick="search()">Search</button>

        </div>

        <h1>User List</h1>


        <c:choose>
            <c:when test="${!empty listUsers}">
                <table class="tg">
                    <tr>
                        <th width="80">ID</th>
                        <th width="120">Name</th>
                        <th width="120">Age</th>
                        <th width="60">Admin</th>
                        <th width="120">CreateDate</th>
                        <th width="60">Edit</th>
                        <th width="60">Delete</th>
                    </tr>
                    <c:forEach items="${listUsers}" var="user">
                        <tr>
                            <td>${user.id}</td>
                            <td>${user.name}</td>
                            <td>${user.age}</td>
                            <td>${user.admin}</td>
                            <td>${user.createDate}</td>

                            <td><a href="<c:url value='/edit/${user.id}'/>">Edit</a></td>
                            <td><a href="<c:url value='/remove/${user.id}'/>">Delete</a></td>
                        </tr>
                    </c:forEach>
                </table>
                    <br/>
            </c:when>
            <c:otherwise>
                <h1> is empty!</h1>
                <br/>
            </c:otherwise>
        </c:choose>

        <div id="footer">
            <h1>Add a User</h1>

            <c:url var="addAction" value="/users/add"/>

            <form:form action="${addAction}" commandName="user">
                <table>
                    <c:if test="${!empty user.name}">
                        <tr>
                            <td>
                                <form:label path="id">
                                    <spring:message text="ID"/>
                                </form:label>
                            </td>
                            <td>
                                <form:input path="id" readonly="true" size="8" disabled="true"/>
                                <form:hidden path="id"/>
                            </td>
                        </tr>
                    </c:if>
                    <tr>
                        <td>
                            <form:label path="name">
                                <spring:message text="Name"/>
                            </form:label>
                        </td>
                        <td>
                            <form:input cssClass="input" path="name"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <form:label path="age">
                                <spring:message text="Age"/>
                            </form:label>
                        </td>
                        <td>
                            <form:input cssClass="input" path="age"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                                <spring:message text="Admin"/>
                        </td>
                        <td>
                            <form:checkbox path="admin"/>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <c:if test="${!empty user.name}">
                                <input type="submit" class="bat"
                                       value="<spring:message text="Edit User"/>"/>
                            </c:if>
                            <c:if test="${empty user.name}">
                                <input type="submit" class="bat"
                                       value="<spring:message text="Add User"/>"/>
                            </c:if>
                        </td>
                    </tr>
                </table>
            </form:form>
        </div>
    </div>

    <div id="scrollup">
        <img src="<c:url value="/images/up.png"/> " alt="up">
    </div>


<script>
    function search() {
        var search = document.getElementById("searchField").value;
        window.location = '/users/search?name=' + search;
    }
</script>

</body>
</html>
