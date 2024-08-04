/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Account;
import entity.Category;
import entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import static java.util.Collections.list;
import java.util.List;

/**
 *
 * @author ADM
 */
public class DAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
// ham nay lay tat ca product co trong db day vao trong list    
    public List<Product>getAllProduct(){
        List<Product> list = new ArrayList<>();
        String query = "select*from product";
        try{
            conn = new DBContext().getConnection();// mo ket noi voi sql 
            ps= conn.prepareStatement(query);
            rs= ps.executeQuery();
            while(rs.next()){
                list.add(new Product(rs.getInt(1),
                             rs.getString(2),
                              rs.getString(3),
                              rs.getDouble(4),
                              rs.getString(5),
                            rs.getString(6)));
            }
        }catch(Exception e ){
            
        }
        return list;
        
    }
    public List<Category>getAllCategory(){
        List<Category> list = new ArrayList<>();
        String query = "select  *from Category";
        try{
            conn = new DBContext().getConnection();// mo ket noi voi sql 
            ps= conn.prepareStatement(query);
            rs= ps.executeQuery();
            while(rs.next()){
                list.add(new Category(rs.getInt(1),
                             rs.getString(2)));
                              
            }
        }catch(Exception e ){
            
        }
        return list;
        
    }
    public Product getLast(){
        String query ="select top 1 * from product \n"
                +"order by id desc";
        try {
            conn = new DBContext().getConnection();// mo ket noi voi sql 
            ps= conn.prepareStatement(query);
            rs= ps.executeQuery();
            while (rs.next()){
                return  new Product(rs.getInt(1),
                             rs.getString(2),
                              rs.getString(3),
                              rs.getDouble(4),
                              rs.getString(5),
                            rs.getString(6));
            }
        } catch (Exception e) {
        }
        return null;
    }
    public List<Product>getProductByCID( String  cid ){
        List<Product> list = new ArrayList<>();
        String query = "select*from product\n"
                + "where cateID= ?";
        try{
            conn = new DBContext().getConnection();// mo ket noi voi sql 
            ps= conn.prepareStatement(query);
            ps.setString(1,cid);
            rs= ps.executeQuery();
            while(rs.next()){
                list.add(new Product(rs.getInt(1),
                             rs.getString(2),
                              rs.getString(3),
                              rs.getDouble(4),
                              rs.getString(5),
                            rs.getString(6)));
            }
        }catch(Exception e ){
            
        }
        return list;
        
    }
    public Product getProductByID(String id){
        
        String query = "select * from product\n"
                + "where id = ?";
        try{
            conn = new DBContext().getConnection();// mo ket noi voi sql 
            ps= conn.prepareStatement(query);
            ps.setString(1,id);
            rs= ps.executeQuery();
            while(rs.next()){
                return new Product(rs.getInt(1),
                             rs.getString(2),
                              rs.getString(3),
                              rs.getDouble(4),
                              rs.getString(5),
                            rs.getString(6));
            }
        }catch(Exception e ){
            
        }
        return null;
        
      
    }
    public List<Product>searchByName ( String  txtSearch ){
        List<Product> list = new ArrayList<>();
        String query = "select*from product\n"
                + "where [name] like ? ";
        try{
            conn = new DBContext().getConnection();// mo ket noi voi sql 
            ps= conn.prepareStatement(query);
            ps.setString(1,"%"+txtSearch+"%");
            rs= ps.executeQuery();
            while(rs.next()){
                list.add(new Product(rs.getInt(1),
                             rs.getString(2),
                              rs.getString(3),
                              rs.getDouble(4),
                              rs.getString(5),
                            rs.getString(6)));
            }
        }catch(Exception e ){
            
        }
        return list;
        
    }
    public Account login(String user , String pass){
        String query ="select * from account\n"
                +"where [user]= ?\n"
                +"and pass= ? ";
        try{
            conn = new DBContext().getConnection();// mo ket noi voi sql 
            ps= conn.prepareStatement(query);
            ps.setString(1,user);
            ps.setString(2,pass);
            rs= ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));

            }
        } catch (Exception e) {

        }
        return null;

    }
    public Account checkAccountExist(String user ){
        String query ="select * from account\n"
                +"where [user]= ?\n";
                
        try{
            conn = new DBContext().getConnection();// mo ket noi voi sql 
            ps= conn.prepareStatement(query);
            ps.setString(1,user);
           
            rs= ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));

            }
        } catch (Exception e) {

        }
        return null;

    }
    public void signup(String user, String pass){
        String query ="insert into account \n"+
                "values(?,?,0,0)";
        try {
            conn = new DBContext().getConnection();// mo ket noi voi sql 
            ps= conn.prepareStatement(query);
            ps.setString(1,user);
            ps.setString(2,pass);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public List<Product>getProductBySellID(int id ){
        List<Product> list = new ArrayList<>();
        String query = "select * from product\n"
                + "where sell_ID = ?";
        try{
            conn = new DBContext().getConnection();// mo ket noi voi sql 
            ps= conn.prepareStatement(query);
            ps.setInt(1,id);
            rs= ps.executeQuery();
            while(rs.next()){
                list.add(new Product(rs.getInt(1),
                             rs.getString(2),
                              rs.getString(3),
                              rs.getDouble(4),
                              rs.getString(5),
                            rs.getString(6)));
            }
        }catch(Exception e ){
            
        }
        return list;
        
    }
    public void deleteProduct(String pid){
        String query =" delete from product \n"+
               "where id = ? ";
        try {
            conn = new DBContext().getConnection();// mo ket noi voi sql 
            ps= conn.prepareStatement(query);
            ps.setString (1,pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
                
    }
   public void insertProduct(String name, String image, String price,
            String title, String description, String category, int sid) {
        String query = "INSERT [dbo].[product] \n"
                + "([name], [image], [price], [title], [description], [cateID], [sell_ID])\n"
                + "VALUES(?,?,?,?,?,?,?)";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, title);
            ps.setString(5, description);
            ps.setString(6, category);
            ps.setInt(7, sid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
   public void editProduct(String name, String image, String price,
            String title, String description, String category, String pid) {
        String query = "update product\n"
                + "set [name] = ?,\n"
                + "[image] = ?,\n"
                + "price = ?,\n"
                + "title = ?,\n"
                + "[description] = ?,\n"
                + "cateID = ?\n"
                + "where id = ?";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, title);
            ps.setString(5, description);
            ps.setString(6, category);
            ps.setString(7, pid);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
    public List<Product> getTop3() {
        List<Product> list = new ArrayList<>();
        String query = "select top 6 * from product";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }
    public List<Product> getNext3Product(int amount) {
        List<Product> list = new ArrayList<>();
        String query = "SELECT *\n"
                + "  FROM product\n"
                + " ORDER BY id\n"
                + "OFFSET ? ROWS\n"
                + " FETCH NEXT 6 ROWS ONLY";
        try {
            conn = new DBContext().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, amount);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }
 
        public List<Account> getAllAccounts( ) {
        List<Account> accounts = new ArrayList<>();
        String query = "SELECT * FROM Account";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            conn = new DBContext().getConnection(); // Mở kết nối với SQL
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String user = rs.getString("user");
                String pass = rs.getString("pass");
                int isSell = rs.getInt("isSell");
                int isAdmin = rs.getInt("isAdmin");
                accounts.add(new Account(id, user, pass, isSell, isAdmin));
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (conn != null) {
                try {
                    conn.close(); // Đóng kết nối
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        return accounts;
    }
    public void deletebyadmin(String did){
        String query =" delete from product \n"+
               "where id = ? ";
        try {
            conn = new DBContext().getConnection();// mo ket noi voi sql 
            ps= conn.prepareStatement(query);
            ps.setString (1,did);
            ps.executeUpdate();
        } catch (Exception e) {
        }
                
    }
    
    public static void main(String[] args) {
        DAO dao = new DAO();
        List<Product> list = dao.getAllProduct();
        List<Category> listC = dao.getAllCategory();

        for (Category o : listC) {
            System.out.println(o);
        }
    }
}

  

