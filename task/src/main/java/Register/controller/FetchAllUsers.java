package Register.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;



import task.dao.RegisterCrud;
import task.dto.Register;

@WebServlet("/fetchall")
public class FetchAllUsers extends HttpServlet {
	public void service(ServletRequest req, ServletResponse res) 
			throws ServletException, IOException {
	             RegisterCrud crud=new RegisterCrud();
	               List<Register> data = crud.fetchAllUsers();
	             req.setAttribute("list",data);
	 			RequestDispatcher rd = req.getRequestDispatcher("printall.jsp");
	 			rd.include(req, res);
	}


}
