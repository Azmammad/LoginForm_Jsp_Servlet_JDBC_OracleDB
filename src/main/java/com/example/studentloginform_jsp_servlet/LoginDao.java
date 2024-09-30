package com.example.studentloginform_jsp_servlet;

import java.sql.*;

public class LoginDao {
    public boolean insert(User user) throws SQLException {
        Connection con = null;
        boolean result = false;

        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","sys as sysdba","password");

            String query = "Insert into Login (UserName,Password) values(?,?)";

            PreparedStatement pst = con.prepareStatement(query);
            pst.setString(1, user.getUserName());
            pst.setString(2,user.getPassword());

            /*int rowsAffected = pst.executeUpdate();  // Use executeUpdate for insert statements
            result = rowsAffected > 0; */
            ResultSet rs = pst.executeQuery();
            result = rs.next();

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            return result;
        }
        return result;
    }
}
