package com.cydeo.jdbctests;

import java.sql.*;

public class TestOracleConnection {

      /*
      HOW TO INIT VARIABLE

      OPT+ENTER --> Introduce Local Varibale --> MAC

      ALT+ENTER --> Introduce Local Variable --> WIN

     */

    public static void main(String[] args) throws SQLException {

        String dbURL="jdbc:oracle:thin:@54.164.57.236:1521:XE" ;
        String dbUsername="hr";
        String dbPassword="hr";

        // Here we are making the connection to the DB
        Connection conn = DriverManager.getConnection(dbURL,dbUsername,dbPassword);

        // Statement helps us to execute query
        Statement statement = conn.createStatement();

        // ResultSet stores data that we get after query execution
        // How to run query? Choose query, CMD+ENTER or CTRLÊNTER, Choose session
        ResultSet rs = statement.executeQuery("select * from regions");

        // next() --> move cursor to next line
        rs.next();

        System.out.println(rs.getInt(1));
        System.out.println(rs.getInt("REGION_ID"));


    }
}
