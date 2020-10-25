package servlet;


import java.io.File;
import java.io.FileInputStream;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathExpression;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;
import org.w3c.dom.Document;
import org.xml.sax.SAXException;


@WebServlet(name = "processLogin", urlPatterns = {"/processLogin"})
public class processLogin extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ParserConfigurationException, SAXException, XPathExpressionException {
        response.setContentType("text/html;charset=UTF-8");

        FileInputStream file = new FileInputStream(new File("C:\\Users\\Gost\\Documents\\NetBeansProjects\\CarsUnlimited\\web\\WEB-INF\\password.xml"));
        DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
        DocumentBuilder db = dbf.newDocumentBuilder();
        Document doc = db.parse(file);

        XPathFactory xpf = XPathFactory.newInstance();
        XPath xpath = xpf.newXPath();
        XPathExpression xpe = xpath.compile("/root/security/password[@id=1]");
        String res = xpe.evaluate(doc);

        String userPass = request.getParameter("password");

        if (userPass != null) {
            if (userPass.equals(res)) {
                RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/cars.xml");
                rd.forward(request, response);
            } else {
                PrintWriter w = response.getWriter();
                w.println("<html><body><h2>Incorrect password!</h2><br><a href=\"./detailsLogin.jsp\">Back</a></body></html>");
            }
        } else {
            PrintWriter w = response.getWriter();
            w.println("<html><body><h2>Incorrect password!</h2><br><a href=\"./detailsLogin.jsp\">Back</a></body></html>");

        }
  
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ParserConfigurationException | SAXException | XPathExpressionException ex) {
            Logger.getLogger(processLogin.class.getName()).log(Level.SEVERE, null, ex);
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ParserConfigurationException | SAXException | XPathExpressionException ex) {
            Logger.getLogger(processLogin.class.getName()).log(Level.SEVERE, null, ex);
        }
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
