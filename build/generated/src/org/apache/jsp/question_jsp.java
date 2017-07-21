package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import login.dto_program;
import java.sql.SQLException;
import java.sql.DriverManager;
import java.sql.Connection;

public final class question_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        ");

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp?useUnicode=true&characterEncoding=UTF-8", "root", "");
            Statement ps = con.createStatement();
            ResultSet rs = ps.executeQuery("SELECT * FROM program ORDER BY RAND() LIMIT 15");
            int n = 0;
            rs.last();
            n = rs.getRow();
            rs.first();
            out.println(n);
            //ArrayList<dto_program> list_question = new ArrayList<dto_program>();
            login.dto_program list_question[] = new login.dto_program[15];
            
            for(int i = 0 ; i < 15 ; i ++)
            {
                login.dto_program question = new login.dto_program();
                question.setId(rs.getInt("id"));
                question.setQuestion(rs.getString("question"));
                question.setA(rs.getString("a"));
                question.setB(rs.getString("b"));
                question.setC(rs.getString("c"));
                question.setD(rs.getString("d"));
                question.setAnswer(rs.getString("answer"));
                rs.next();
                list_question[i] = question;
            }

            login.question.list_question = list_question;
            
            

        
      out.write("\n");
      out.write("        <form method=\"post\" action=\"question\" >\n");
      out.write("            ");
 
                for(int i = 0 ; i < 15; i++)
                {
                    request.setAttribute("question", list_question[i].getQuestion());
                    request.setAttribute("a", list_question[i].getA());
                    request.setAttribute("b", list_question[i].getB());
                    request.setAttribute("c", list_question[i].getC());
                    request.setAttribute("d", list_question[i].getD());
                    request.setAttribute("number", i+1);
                
            
      out.write("\n");
      out.write("            <div class=\"question\">\n");
      out.write("                Question ");
      out.print( request.getAttribute("number") );
      out.write(" : ");
      out.print( request.getAttribute("question") );
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <div class=\"reply\">\n");
      out.write("                <input type=\"radio\" name=\"");
      out.print( request.getAttribute("number") );
      out.write("\" value=\"a\" >A: ");
      out.print( request.getAttribute("a") );
      out.write("\n");
      out.write("                <br />\n");
      out.write("                <input type=\"radio\" name=\"");
      out.print( request.getAttribute("number") );
      out.write("\" value=\"b\" >B: ");
      out.print( request.getAttribute("b") );
      out.write("\n");
      out.write("                <br />\n");
      out.write("                <input type=\"radio\" name=\"");
      out.print( request.getAttribute("number") );
      out.write("\" value=\"c\" >C: ");
      out.print( request.getAttribute("c") );
      out.write("\n");
      out.write("                <br />\n");
      out.write("                <input type=\"radio\" name=\"");
      out.print( request.getAttribute("number") );
      out.write("\" value=\"d\" >D: ");
      out.print( request.getAttribute("d") );
      out.write("\n");
      out.write("            </div>\n");
      out.write("                ");
 
                }
            
      out.write("\n");
      out.write("               \n");
      out.write("            <div class=\"tool\">\n");
      out.write("                <input type=\"submit\" value=\"Select\" name=\"select\" style=\"width: 100px; margin-left: 150px; margin-top: 15px;\" />\n");
      out.write("                <input type=\"button\" value=\"Back\" name=\"back\" onclick=\"window.location.href='/web2'\" style=\"width: 100px;\" />\n");
      out.write("            </div>\n");
      out.write("        </form>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("        <style>\n");
      out.write("            .question\n");
      out.write("            {\n");
      out.write("                width: 550px;\n");
      out.write("                border: 1px solid black;\n");
      out.write("                min-height: 50px;\n");
      out.write("                margin-bottom: 10px;\n");
      out.write("            }\n");
      out.write("            .reply\n");
      out.write("            {\n");
      out.write("                width: 550px;\n");
      out.write("                border: 1px solid black;\n");
      out.write("                min-height: 100px;\n");
      out.write("                margin-bottom: 10px;\n");
      out.write("            }\n");
      out.write("            .tool\n");
      out.write("            {\n");
      out.write("                width: 550px;\n");
      out.write("                border: 1px solid black;\n");
      out.write("                min-height: 50px;\n");
      out.write("                margin-bottom: 10px;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
