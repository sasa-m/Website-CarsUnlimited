<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <title>Cars Unlimited</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">
    </head>
    <body>
        <div class="header">
            <h2 class="logo">Cars Unlimited</h2>
            <input type="checkbox" id="chk">
            <label for="chk" class="show-menu-btn">
                <i class="fas fa-ellipsis-h"></i>
            </label>

            <ul class="menu">
                <a href="./index.html">Home</a>
                <a href="./cars.jsp">Cars</a>
                <a href="./detailsLogin.jsp">Details</a>
                <a href="./contact.jsp">Contact</a>
                <label for="chk" class="hide-menu-btn">
                    <i class="fas fa-times"></i>
                </label>    
            </ul>
        </div>
        <div align="center">
            <form action="processLogin" method="post">
                <table class="loginForm">
                    <tr>
                        <td><label for="password">Password</label></td>
                        <td><input type="password" id="password" name="password" class="searchTextField"/></td>  
                    </tr>
                    <tr>
                        <td colspan="2" align="center">
                            <input type="submit" value="Login" class="actionBtn"/>
                        </td>
                    </tr>  
                </table>  
            </form> 
        </div>
    </body>
</html>
