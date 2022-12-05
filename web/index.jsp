<%-- 
    Document   : index
    Created on : 5 дек. 2022 г., 11:35:30
    Author     : HP
--%>


<%@page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            body{
                background-image:url("https://assets.entrepreneur.com/content/3x2/2000/20200429211042-GettyImages-1164615296.jpeg?crop");
                background-repeat: no-repeat;
                background-size: cover;
                background-color: #cccccc; 
            }
            h1{
                text-align:center;
            }
            #page{
                width: 800px;
                margin: auto;
            }
            form{
                width: 400px;
                margin: auto;
            }
            input[type=submit]{
                margin: auto;
            }
        </style>
    </head>
    <body>
        <div id='page'>
            <h1>Hey,share some information about yourself!</h1>
            <form>
                <table>
                    <tbody>
                        <tr>
                            <td><label for="name"></label>Name</td> 
                            <td><input id="name" type="text" name="name"></td>
                        </tr>
                        <tr>
                            <td><label for="surname"></label>Surname</td> 
                            <td><input id="surname" type="text" name="surname"></td>
                        </tr>
                        <tr>
                            <td><label for="email"></label>Email</td> 
                            <td><input id="email" type="email" name="email"></td>
                        </tr>
                    </tbody>
                </table>
                <input type="submit" name="send" value="Відправити">
            </form>
            
            <c:if test="${not empty param.send}">
                <c:set var="id" value="${id+1}" scope="application"/>
                
                <c:if test="${not empty param.name}">
                    <c:set var="name" value="${param.name}" scope="session"/>
                    <p>Name:${param.name}</p>
                </c:if>
                    
                <c:if test="${not empty param.surname}">
                    <c:set var="surname" value="${param.surname}" scope="session"></c:set>
                    <p>Surname:${param.surname}</p>
                </c:if>
                    
                <c:if test="${not empty param.email}">
                    <c:set var="email" value="${param.email}" scope="session"/>
                    <p>Email: ${param.email}</p>
                </c:if>
            </c:if>
                  
        </div>
    </body>
</html>

