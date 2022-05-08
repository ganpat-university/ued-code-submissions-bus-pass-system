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

@WebServlet(urlPatterns="/reject")
public class reject extends HttpServlet{
	@Override
	public void init() throws ServletException {
		super.init();
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();
        String user_id = req.getParameter("userid");
        
		try {
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","97250");
			PreparedStatement prp=con.prepareStatement("UPDATE pass_details SET status='Rejected' WHERE user_id=?;");
	        prp.setString(1, user_id);
			prp.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			
			PrintWriter o=resp.getWriter();
			resp.setContentType("text/HTML");
			o.println("<script type=\"text/javascript\">");
			o.println("alert(\"successfull Rejected!!!\")");
			o.println("window.location.href = \"userreq.jsp\";");
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
