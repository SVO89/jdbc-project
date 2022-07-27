package com.cydeo.jdbctests.day01;

import org.junit.jupiter.api.Test;

import javax.xml.crypto.Data;
import java.sql.*;

public class P03_MetaDataTest {String dbUrl = "jdbc:oracle:thin:@54.211.225.58:1521:XE";

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
        ResultSet rs = statement.executeQuery("select * from EMPLOYEES");

        // Database Metadata --> Information about database
        DatabaseMetaData databaseMetaData = conn.getMetaData();
        System.out.println(databaseMetaData.getUserName());
        System.out.println(databaseMetaData.getDatabaseProductName());
        System.out.println(databaseMetaData.getDatabaseProductName());
        System.out.println(databaseMetaData.getDriverName());
        System.out.println(databaseMetaData.getDriverVersion());
        // We are not going to use it for testing, only for information purposes

        // ResultSetMetadata --> Data about the Table
        ResultSetMetaData rsmd = rs.getMetaData();

        // How many columns do we have?
        int columnsCount = rsmd.getColumnCount();
        System.out.println(columnsCount);

        // What is the column name for the 5th column?
        System.out.println(rsmd.getColumnName(5));

        System.out.println(rsmd.getColumnDisplaySize(5));
        System.out.println(rsmd.getCatalogName(5));
        System.out.println(rsmd.getColumnType(5));

        // Print all column names dynamically
        for (int i = 1; i < columnsCount; i++){
            System.out.println(rsmd.getColumnName(i));
        }

        // Print all rows dynamically
        for (int i = 1; i < columnsCount; i++){
            System.out.print(rsmd.getColumnName(i)+" ");
        }
        System.out.println();

        while (rs.next()){
            for (int i = 1; i < rsmd.getColumnCount(); i++){
                System.out.print(rs.getString(i));
            }
        }

        //close conn
        rs.close();
        statement.close();
        conn.close();
    }
}