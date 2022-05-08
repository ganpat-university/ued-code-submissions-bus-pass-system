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

@WebServlet(urlPatterns="/newpass")
public class newpass extends HttpServlet{
	@Override
	public void init() throws ServletException {
		super.init();
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();
		String fullname = req.getParameter("fullname");
        String dob = req.getParameter("dob");
        String email = req.getParameter("email");
        String mobileno = req.getParameter("mobile");
        String gender = req.getParameter("gender");
        String occupation = req.getParameter("occupation");
        String passtype = req.getParameter("passtype");
        String category = req.getParameter("category");
        String user_id = req.getParameter("userid");
        String root = req.getParameter("root");
        String addline1 = req.getParameter("addline1");
        String orgname = req.getParameter("orgname");
        String orgaddress = req.getParameter("orgaddress");
        String education = req.getParameter("education");
        
		try {
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","97250");
			PreparedStatement prp=con.prepareStatement("insert into pass_details (fullname,dob,email,mobileno,gender,occupation,passtype,category,user_id, root, addline1, orgname, orgaddress, education, status) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,'Pending');");
			prp.setString(1, fullname);
			prp.setString(2, dob);
			prp.setString(3, email);
			prp.setString(4, mobileno);
			prp.setString(5, gender);
			prp.setString(6, occupation);
			prp.setString(7, passtype);
	        prp.setString(8, category);
	        prp.setString(9, user_id);
	        prp.setString(10, root);
	        prp.setString(11, addline1);
	        prp.setString(12, orgname);
	        prp.setString(13, orgaddress);
	        prp.setString(14, education);
			prp.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			
			PrintWriter o=resp.getWriter();
			resp.setContentType("text/HTML");
			o.println("<script type=\"text/javascript\">");
			o.println("alert(\"successfull registered!!!\")");
			o.println("window.location.href = \"Dashboard.jsp\";");
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