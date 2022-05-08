package project;

import java.sql.*;
import java.util.*;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns="/register")
public class register extends HttpServlet{
	@Override
	public void init() throws ServletException {
		super.init();
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();
		String username =(String) req.getParameter("username");
		String email = (String)req.getParameter("email");
		String phoneno = (String)req.getParameter("phoneno");
		String password = (String)req.getParameter("passwordData");
		try {
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","97250");
			PreparedStatement prp=con.prepareStatement("insert into logdata(username,email,phoneno,passwordData) values(?,?,?,?);");
			prp.setString(1, username);
			prp.setString(2, email);
			prp.setString(3, phoneno);
			prp.setString(4, password);
			prp.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			
			PrintWriter o=resp.getWriter();
			resp.setContentType("text/HTML");
			o.println("<script type=\"text/javascript\">");
			o.println("alert(\"successfull registered!!!\")");
			o.println("window.location.href = \"index.html\";");
			o.println("</script>");
			
		} catch (Exception e) {
			e.printStackTrace();
		} 
	}
	@Override
	public void destroy(){
		super.destroy();
	}
	public static void main(String[] args){
	}
}
