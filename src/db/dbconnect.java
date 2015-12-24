/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import java.sql.DriverManager;
import java.sql.ResultSet;
import javax.swing.JOptionPane;

/**
 *
 * @author Admin_Zeekoi
 */
public class dbconnect {
    public Statement st=null;
    public ResultSet rs=null;
    public Connection con=null;

public dbconnect(){
    try {
        Class.forName("com.mysql.jdbc.Driver");
        con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost/agriculture","root","");
        st=(Statement) con.createStatement();
    } catch (Exception e) {
        JOptionPane.showMessageDialog(null, e);
        e.printStackTrace();
    }
}

public ResultSet getData(String sql){
    try {
        rs=st.executeQuery(sql);
    } catch (Exception e) {
        e.printStackTrace();
         JOptionPane.showMessageDialog(null, e);
    }
    return rs;
}

public int putData(String sql){
    int i=-1;
    try {
         i=st.executeUpdate(sql);
    } catch (Exception e) {
       // System.out.println("putdata-----"+e);
        JOptionPane.showMessageDialog(null,"putdata-----"+e);
        e.printStackTrace();
    }
    return i;
}

public void DBClose(){
    try {
        con.close();
    } catch (Exception e) {
        e.printStackTrace();
    }
}
}
