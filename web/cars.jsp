<%@page import="javax.xml.xpath.XPathExpression"%>
<%@page import="javax.xml.xpath.XPath"%>
<%@page import="javax.xml.xpath.XPathFactory"%>
<%@page import="org.w3c.dom.Document"%>
<%@page import="javax.xml.parsers.DocumentBuilder"%>
<%@page import="javax.xml.parsers.DocumentBuilderFactory"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
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
        
        <%
            FileInputStream file = new FileInputStream(new File("C:\\Users\\Gost\\Documents\\NetBeansProjects\\CarsUnlimited\\web\\WEB-INF\\cars.xml"));
            DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
            DocumentBuilder db = dbf.newDocumentBuilder();
            Document doc = db.parse(file);

            XPathFactory xpf = XPathFactory.newInstance();
            XPath xpath = xpf.newXPath();

            XPathExpression xpe1 = xpath.compile("/cars/car[@id=1]/manufacturer");
            String r1 = xpe1.evaluate(doc);
            XPathExpression xpe2 = xpath.compile("/cars/car[@id=1]/model");
            String r2 = xpe2.evaluate(doc);
            XPathExpression xpe3 = xpath.compile("/cars/car[@id=1]/year");
            String r3 = xpe3.evaluate(doc);
            XPathExpression xpe4 = xpath.compile("/cars/car[@id=1]/price");
            String r4 = xpe4.evaluate(doc);

            XPathExpression xpe5 = xpath.compile("/cars/car[@id=2]/manufacturer");
            String r5 = xpe5.evaluate(doc);
            XPathExpression xpe6 = xpath.compile("/cars/car[@id=2]/model");
            String r6 = xpe6.evaluate(doc);
            XPathExpression xpe7 = xpath.compile("/cars/car[@id=2]/year");
            String r7 = xpe7.evaluate(doc);
            XPathExpression xpe8 = xpath.compile("/cars/car[@id=2]/price");
            String r8 = xpe8.evaluate(doc);

            XPathExpression xpe9 = xpath.compile("/cars/car[@id=3]/manufacturer");
            String r9 = xpe9.evaluate(doc);
            XPathExpression xpe10 = xpath.compile("/cars/car[@id=3]/model");
            String r10 = xpe10.evaluate(doc);
            XPathExpression xpe11 = xpath.compile("/cars/car[@id=3]/year");
            String r11 = xpe11.evaluate(doc);
            XPathExpression xpe12 = xpath.compile("/cars/car[@id=3]/price");
            String r12 = xpe12.evaluate(doc);

            XPathExpression xpe13 = xpath.compile("/cars/car[@id=4]/manufacturer");
            String r13 = xpe13.evaluate(doc);
            XPathExpression xpe14 = xpath.compile("/cars/car[@id=4]/model");
            String r14 = xpe14.evaluate(doc);
            XPathExpression xpe15 = xpath.compile("/cars/car[@id=4]/year");
            String r15 = xpe15.evaluate(doc);
            XPathExpression xpe16 = xpath.compile("/cars/car[@id=4]/price");
            String r16 = xpe16.evaluate(doc);

            XPathExpression xpe17 = xpath.compile("/cars/car[@id=5]/manufacturer");
            String r17 = xpe17.evaluate(doc);
            XPathExpression xpe18 = xpath.compile("/cars/car[@id=5]/model");
            String r18 = xpe18.evaluate(doc);
            XPathExpression xpe19 = xpath.compile("/cars/car[@id=5]/year");
            String r19 = xpe19.evaluate(doc);
            XPathExpression xpe20 = xpath.compile("/cars/car[@id=5]/price");
            String r20 = xpe20.evaluate(doc);

            XPathExpression xpe21 = xpath.compile("/cars/car[@id=6]/manufacturer");
            String r21 = xpe21.evaluate(doc);
            XPathExpression xpe22 = xpath.compile("/cars/car[@id=6]/model");
            String r22 = xpe22.evaluate(doc);
            XPathExpression xpe23 = xpath.compile("/cars/car[@id=6]/year");
            String r23 = xpe23.evaluate(doc);
            XPathExpression xpe24 = xpath.compile("/cars/car[@id=6]/price");
            String r24 = xpe24.evaluate(doc);

        %>
        
        <div class="pictures">
            <div class="gallery">
                <img src="images/<%=r1%><%=r2%>.jpg">
                    <div class="desc"><label><%=r1%> </label><label><%=r2%> &sol; </label><label><%=r3%> &sol; </label><label><%=r4%>&euro;</label>
                    </div>
            </div>
            <div class="gallery">
                <img src="images/<%=r5%><%=r6%>.jpg">
                    <div class="desc"><label><%=r5%> </label><label><%=r6%> &sol; </label><label><%=r7%> &sol; </label><label><%=r8%>&euro;</label>
                    </div>
            </div>
            <div class="gallery">
                <img src="images/<%=r9%><%=r10%>.jpg">
                    <div class="desc"><label><%=r9%> </label><label><%=r10%> &sol; </label><label><%=r11%> &sol; </label><label><%=r12%>&euro;</label>
                    </div>
            </div><div class="gallery">
                <img src="images/<%=r13%><%=r14%>.jpg">
                    <div class="desc"><label><%=r13%> </label><label><%=r14%> &sol; </label><label><%=r15%> &sol; </label><label><%=r16%>&euro;</label>
                    </div>
            </div><div class="gallery">
                <img src="images/<%=r17%><%=r18%>.jpg">
                    <div class="desc"><label><%=r17%> </label><label><%=r18%> &sol; </label><label><%=r19%> &sol; </label><label><%=r20%>&euro;</label>
                    </div>
            </div><div class="gallery">
                <img src="images/<%=r21%><%=r22%>.jpg">
                    <div class="desc"><label><%=r21%> </label><label><%=r22%> &sol; </label><label><%=r23%> &sol; </label><label><%=r24%>&euro;</label>
                    </div>
            </div>
        </div>
       
        <footer>
            <p>Copyright &copy; 2020 Cars Unlimited</p>
        </footer>
    </body>
</html>