<html>
    <head>
        <title>email Utility</title>
    </head>
    <body>
        <%@page import ="java.util.*" %>
        <%@page import ="javax.mail.*" %>
        <%@page import ="javax.mail.internet.*" %>
        <%@page import ="javax.activation.*" %>
        <%@page import ="java.net.PasswordAuthentication.*" %>
        <%@page import ="java.net.Authenticator.*" %>
        <%
            String host="smtp.gmail.com";
            String to = request.getParameter("to");
            
            String from = request.getParameter("from");
            
            String subject = request.getParameter("subject");
            
            String messageText = request.getParameter("messageText");
            
            boolean sessionDebug = false;
//            create some properties and get the default session.
            Properties props= System.getProperties();
            props.put("mail.host",host);
            props.put("mail.transort.protocol","smtp");
            props.setProperty("mail.transport.protocol","smtp");
            props.setProperty("mail.host","smtp.gmail.com");
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.port", "465");
            props.put("mail.debug", "true");
            props.put("mail.smtp.socketFactory.port", "465");
            props.put("mail.smtp.socketFactory.port","javax.net.ssl.SSLSocketFactory");
            props.put("mail.smtp.socketFactory.fallback", "false");
            
             Session mailSession = Session.getDefaultInstance(props,
                     new javax.mail.Authenticator(){
                     protected PasswordAuthentication getPasswordAuthentication(){
                     return new PasswordAuthentication (
                      "freshpick12@gmail.com","lsqsinvmnozjguxe");
                     }
                     });
             //set debug on the Session
             //passing false will not echo debug info, and passing True will
           
             mailSession.setDebug(sessionDebug);
             
             //Instantiate a new MimeMessage and fill it with the required inforamtion
             
             Message msg= new MimeMessage(mailSession);
             msg.setFrom(new InternetAddress(from));
             InternetAddress[] address= {new InternetAddress(to)};
             msg.setRecipients(Message.RecipientType.TO, address);
             msg.setSubject(subject);
             msg.setSentDate(new Date());
             msg.setText(messageText);
            
//Hand the message to the default transport service
//for delivery
Transport.send(msg);
out.println("Mail was sent to" + to);
out.println("from" + from);
out.println(" using host " + host + ".");
%>
 
    </body>
</html>
