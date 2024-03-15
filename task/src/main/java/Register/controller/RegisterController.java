package Register.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

import task.dao.RegisterCrud;
import task.dto.Register;

@WebServlet("/register")

public class RegisterController extends HttpServlet{
	public void service(ServletRequest req, ServletResponse res) 
			throws ServletException, IOException {
			String name = req.getParameter("name");
			String email = req.getParameter("email");
			String age = req.getParameter("age");
			String dob = req.getParameter("dob");

			System.out.println(name + " " + email + " " + age + " " + dob);
            Register register = new Register(name, email, Integer.parseInt(age), 
					dob);
			 RegisterCrud crud = new RegisterCrud ();
			
                     crud.saveUser(register);
	}
}
