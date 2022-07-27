package com.cydeo.jdbctests.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class P02_FlexibleNavigation {String dbUrl = "jdbc:oracle:thin:@54.211.225.58:1521:XE";

    String dbUsername = "hr";
    String dbPassword = "hr";

    @Test
    public void task1() throws SQLException {


        // DriverManager class getConneciton is used for to make connection with database
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        // Statemet helps us to execute Query
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);

        // ResutSet stores data that we get from after query execution
        // rs is just a variable/object name
        ResultSet rs = statement.executeQuery("select FIRST_NAME,LAST_NAME from EMPLOYEES");

        // First row
        rs.next();
        System.out.println(rs.getString(1)+" "+rs.getString(2));

        // Second row
        rs.next();
        System.out.println(rs.getString(1)+" "+rs.getString(2));

        // Loop through the rest
        while (rs.next()){
            System.out.println(rs.getString(1)+" "+rs.getString(2));

            System.out.println("============ GET ROW ============");
            int row = rs.getRow();
            System.out.println(row);

        }

        // Jump to row 10
        System.out.println("============ ABSOLUTE ============");

        rs.absolute(10);
        System.out.println(rs.getString(1) + " - " + rs.getString(2));
        System.out.println(rs.getRow());
        rs.previous();
        System.out.println(rs.getString(1) + " - " + rs.getString(2));
        System.out.println(rs.getRow());
        //close conn
        rs.close();
        statement.close();
        conn.close();
    }
}
