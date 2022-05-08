package project;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet (urlPatterns = "/success")
public class validate extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username= req.getParameter("username");
		String password= req.getParameter("passwordData");	
		HttpSession session=req.getSession();
		try {
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","97250");
			Statement stmt = con.createStatement();
			int count=0;
			ResultSet rs = stmt.executeQuery("select * from logdata;");
			while(rs.next()) {
				if(rs.getString("username").equals(username) && rs.getString("passwordData").equals(password)) {
					count=1;
					break;
				}
			}
			if(count==1) {
				session.setAttribute("username", username);
				resp.sendRedirect("status.jsp");
			}
			else if(count==0){
				PrintWriter out=resp.getWriter();
				resp.setContentType("text/HTML");
				out.println("<script type=\"text/javascript\">");
				out.println("alert(\"Wrong username or Password\")");
				out.println("window.location.href = \"index.jsp\";");
				out.println("</script>");		
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		destroy();	
	}
}

