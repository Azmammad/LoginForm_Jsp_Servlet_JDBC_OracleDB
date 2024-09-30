package com.example.studentloginform_jsp_servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "Login", value = "/Login")
public class Login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Login(){
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
        //doGet(request,response);
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        User user = new User(userName,password);

        LoginDao loginDao = new LoginDao();
        try {
            if (loginDao.insert(user)){
                response.sendRedirect("LoginSuccessful.jsp");
            }else {
                response.sendRedirect("Login.jsp");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
