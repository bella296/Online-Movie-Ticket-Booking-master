package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Location_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("        <link rel=\"shortcut icon\" href=\"./image/27811183.jpg\" type=\"image/x-icon\">\n");
      out.write("\n");
      out.write("        <title>Show Entry Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("    <div id=\"login-box\">\n");
      out.write("     <div class=\"left\">\n");
      out.write("    <h1>Enter Site:</h1>\n");
      out.write("    <form action=\"MovieSelection.jsp\" enctype=\"multipart/form-data\">\n");
      out.write("        \n");
      out.write("    <input type=\"submit\" class=\"checkout-button\" value=\"New Delhi\"/>\n");
      out.write("    <input type=\"submit\" class=\"checkout-button\" value=\"Indore\"/>\n");
      out.write("    <input type=\"submit\" class=\"checkout-button\" value=\"Bhopal\"/>\n");
      out.write("    <input type=\"submit\" class=\"checkout-button\" value=\"Chennai\"/>\n");
      out.write("    <input type=\"submit\" class=\"checkout-button\" value=\"Banglore\"/>\n");
      out.write("    \n");
      out.write("  </div>\n");
      out.write("        <div class=\"right\">\n");
      out.write("   \n");
      out.write("  \n");
      out.write("            </br>\n");
      out.write("            </br>\n");
      out.write("            </br>\n");
      out.write("           \n");
      out.write("    <input type=\"submit\" class=\"checkout-button\" value=\"Ahemdabad\"/>\n");
      out.write("    <input type=\"submit\" class=\"checkout-button\" value=\"Mumbai\"/>\n");
      out.write("    <input type=\"submit\" class=\"checkout-button\" value=\"Gwalior\"/>\n");
      out.write("    <input type=\"submit\" class=\"checkout-button\" value=\"Goa\"/>\n");
      out.write("    <input type=\"submit\" class=\"checkout-button\" value=\"Allahabad\"/>\n");
      out.write("    \n");
      out.write("    </br>\n");
      out.write("        </br>\n");
      out.write("  </div>\n");
      out.write("        </br>\n");
      out.write("        </br>\n");
      out.write("        </br><!-- <br> -->\n");
      out.write("    \n");
      out.write("</div>\n");
      out.write("        \n");
      out.write("</form>\n");
      out.write("        \n");
      out.write("     \n");
      out.write("   </body>\n");
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
