<%@page import="java.util.Properties"%>
<%@page import="javax.mail.*"%>
<%@page import="javax.mail.internet.*"%>
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
    <body onload="displayResult()">
        
        <%! 
            public static class SMTPAuthenticator extends Authenticator{
                
                public PasswordAuthentication getPasswordAuthentication(){
                    return new PasswordAuthentication("kudeljin", "sasa");
                }
        } 
        %>
        
        <%
            int result = 0;
            
            if(request.getParameter("send") != null){
                
                String d_uname = "kudeljin";
                String d_password = "sasa";
                String d_host = "smtp.gmail.com";
                int d_port = 465;
                
                String m_to = "kudeljin@gmail.com";
                String m_from = "kudeljin@gmail.com";
                String m_name = new String();
                String m_phone = new String();
                String m_email = new String();
                String m_subject = new String();
                String m_text = new String();
                
                if(request.getParameter("name") != null){
                    m_name = request.getParameter("name");
                }
                if(request.getParameter("phone") != null){
                    m_phone = request.getParameter("phone");
                }
                if(request.getParameter("email") != null){
                    m_email = request.getParameter("email");
                }
                if(request.getParameter("subject") != null){
                    m_subject = request.getParameter("subject");
                }
                if(request.getParameter("message") != null){
                    m_text = request.getParameter("message");
                }
                
                String f_text = m_name + "<br/>" + m_phone + "<br/>" + m_email + "<br/><br/>" + m_text;
                
                Properties props = new Properties();
                
                
                SMTPAuthenticator auth = new SMTPAuthenticator();
                
                
                Session ses = Session.getInstance(props, auth);
                
                
                MimeMessage meg = new MimeMessage(ses);
                meg.setContent(f_text, "text/html");
                meg.setSubject(m_subject);
                meg.setFrom(new InternetAddress(m_from));
                meg.addRecipient(Message.RecipientType.TO, new InternetAddress(m_to));
                
                try{
                    Transport transport = ses.getTransport("smtps");
                    transport.connect(d_host, d_port, d_uname, d_password);
                    transport.sendMessage(meg, meg.getAllRecipients());
                    transport.close();
                    
                    result = 1;
                    
                }catch(Exception e){
                    out.println(e);
                } 
            }
        
        %>
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
        <div class="contactForm">
            <h1>Contact Us</h1>
            <p>Should you wish to contact us with any queries or you would like to obtain further information on a particular service, please fill out the electronic form below. Alternatively you can contact us on one of the details displayed on the right.</p>
            <div class="contact-box">
                <div class="contact-left">
                    <h3>Send your request</h3>
                    <form name="myContact" action="contact.jsp" method="POST">
                        <div class="input-row">
                            <div class="input-group">
                                <label class="labelContact">Name</label>
                                <input name="name" type="text" placeholder="John Smith">   
                            </div>
                            <div class="input-group">
                                <label class="labelContact">Phone</label>
                                <input name="phone" type="text" placeholder="+35621553333">   
                            </div>
                        </div>
                         <div class="input-row">
                            <div class="input-group">
                                <label class="labelContact">Email</label>
                                <input name="email" type="email" placeholder="johnsmith@gmail.com">   
                            </div>
                            <div class="input-group">
                                <label class="labelContact">Subject</label>
                                <input name="subject" type="text" placeholder="Text">   
                            </div>
                        </div> 
                        <label class="labelContact">Message</label>
                        <textarea name="message" rows="5" placeholder="Your Message"></textarea>
                        <input type="hidden" name="hidden" value="<%= result %>"/>
                        <button name="send" class="buttonContact" type="submit">SEND</button>
                    </form>
                        
                         <script language="JavaScript">
                            function displayResult(){
                                if(document.myContact.hidden.value === "1"){
                                    alert("Mail was sent!");
                                }
                            }
                        </script>
                        
                </div>
                <div class="contact-right">
                    <h3>Reach Us</h3>
                    <table>
                        <tr>
                            <td class="address">Email</td>
                            <td class="address">sale@carsunlimitedmalta.com</td>
                        </tr>
                        <tr>
                            <td class="address">Phone</td>
                            <td class="address">+356 2146 3331</td>
                        </tr>
                        <tr>
                            <td class="address">Address</td>
                            <td class="address">Aries House, Mdina Road<br>
                                Zebbug – Malta<br>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <footer>
            <p>Copyright &copy; 2020 Cars Unlimited</p>
        </footer>
    </body>
</html>

