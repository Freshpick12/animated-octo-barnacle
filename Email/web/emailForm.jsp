<%-- 
    Document   : emailForm
    Created on : 27-May-2023, 3:43:28 pm
    Author     : Janhavi
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>send email</title>
    </head>
    <body bgcolor="#0000FF">
        <form action="emailUtility.jsp" method="post">
            <table border="0" width="35%" align="center">
                <caption><h2>Send Email using SMTP</h2></caption>
                <tr>
                    <td width="50%">Sender address</td>
                    <td><input type="text" name="from" size="50"/></td>
                </tr>
                <tr>
                    <td width="50%">Recipient address</td>
                    <td><input type="text" name="to" size="50"/></td>
                </tr>
                <tr>
                    <td>Subject</td>
                    <td><input type="text" name="from" size="50"/></td>
                </tr>
                <tr>
                    <td>Message Text</td>
                    <td><input type="text" name="messageText" size="50"/></td>
                </tr>
                <tr>
                   
                    <td colspan="2" align="center"><input type="submit" value="Send"/></td>
                </tr>
            </table>
            
        </form>
        
    </body>
</html>
