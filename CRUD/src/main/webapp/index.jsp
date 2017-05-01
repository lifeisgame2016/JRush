<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
  <head>
    <title>JavaRushTest</title>
    <meta charset="utf-8"/>
      <link href="<c:url value="/css/style.css" /> " rel="stylesheet">

  </head>
  <body>

   <div class="content">
       <div class="form-wrapper">
           <h1> JavaRush</h1>
           <div class="linker">
               <span class="ring"></span>
               <span class="ring"></span>
               <span class="ring"></span>
               <span class="ring"></span>
               <span class="ring"></span>
           </div>
           <form class="login-form" action="/users/">
               <button type="submit">START</button>
           </form>
       </div>
   </div>


  </body>
</html>