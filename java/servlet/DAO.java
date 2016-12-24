 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import bean.REstate;
import bean.category;
import bean.range;
import db.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author thanh_000
 */
public class DAO {

    public DAO() {

    }

    DatabaseConnection db = new DatabaseConnection();
    Connection con = null;

    public boolean checkLogin(String username, String password) throws SQLException {
        ResultSet rs = null;
        con = db.setConnection();
        try {

            String sql = "Select * From account Where Username='" + username + "' and Pass_word='" + password + "'";
            rs = db.getResult(sql, con);
            boolean result = rs.next();

            if (result) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            rs.close();
            con.close();
        }
        return false;
    }

    public boolean checkUser(String username) {
        con = db.setConnection();
        try {
            String sql = "Select * From project.account Where Username='" + username + "'";
            ResultSet rs = db.getResult(sql, con);
            boolean result = rs.next();

            System.out.println(sql);
            System.out.println(result);
            rs.close();
            if (result) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean register(String username, String pass, String fullname, String email, String phone, int role) {
        con = db.setConnection();
        try {

            String sql = "Insert Into account (Fullname,Username,Pass_word,Email,Phone_Num,Role_ID)" + "values(?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, fullname);
            ps.setString(2, username);
            ps.setString(3, pass);
            ps.setString(4, email);
            ps.setString(5, phone);
            ps.setInt(6, role);
            int result = ps.executeUpdate();
            ps.close();
            con.close();
            if (result > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean updatePerson(String username, String pass, String fullname, String email, String phone) {
        con = db.setConnection();
        try {

            String sql = "update account set Fullname ='" + fullname + "',Email = '" + email + "',Phone_Num = '" + phone + "',Pass_word = '" + pass + "' where Username ='" + username + "'";
            db.getResultDo(sql, con);
            con.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean updateCate(String name, int id) {
        con = db.setConnection();
        try {
            System.out.print(name);
            String sql = "update project.category set name ='" + name + "' where id_category ='" + id + "'";
            db.getResultDo(sql, con);
            con.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    
    public  boolean updateRange(int id_range, int low, int high)
    {
        con = db.setConnection();
        try
        {
            String sql = "update project.range set low ='" + low + "', high = '" + high + "' where id_range ='" + id_range + "'";
            db.getResultDo(sql, con);
            con.close();
            return true;
        } catch (Exception e)
        {
            e.printStackTrace();
        }
        return false;
    }

    public boolean addGenre(String genreName) {

        con = db.setConnection();
        try {

            String sql = "Insert Into genre (id,) values('" + genreName + "')";
            PreparedStatement ps = con.prepareStatement(sql);
            int result = ps.executeUpdate();
            ps.close();
            con.close();
            if (result > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean addCate(String name) {
        con = db.setConnection();
        try {
            String sql = "Insert Into project.category (name) values ('" + name + "')";
            PreparedStatement ps = con.prepareStatement(sql);
            int result = ps.executeUpdate();
            ps.close();
            con.close();
            if (result > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;

    }
    
    public boolean addRange(int id_range, int low, int high) {
        con = db.setConnection();
        try {
            String sql = "Insert Into project.range (id_range,low,high) values ('" + id_range + "','" + low + "','" + high +"' )";
            PreparedStatement ps = con.prepareStatement(sql);
            int result = ps.executeUpdate();
            ps.close();
            con.close();
            if (result > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;

    }
    

    public boolean insertReal(String street, String ward, String district, int price, int id_range, int id_user, int id_transaction_type,
            String description, String owner_email, int phone, String[] url, int bed, int toilet, int category, String fullname) {
        con = db.setConnection();
        try {
            String sql = "Insert Into project.realestate (street,wart,district,price,id_range,id_transaction_type,id_user,description,owner_email, phone,category,full_name) values(?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, street);
            ps.setString(2, ward);
            ps.setString(3, district);
            ps.setInt(4, price);
            ps.setInt(5, id_range);
            ps.setInt(6, id_transaction_type);
            ps.setInt(7, id_user);
            ps.setString(8, description);
            ps.setString(9, owner_email);
            ps.setInt(10, phone);
            ps.setInt(11, category);
            ps.setString(12, fullname);
            int result = ps.executeUpdate();
            System.out.print(sql);
            //
            ps.close();
            con.close();

            if (result > 0) {

                return true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }

    public ArrayList<REstate> realListUser(int id_user) {
        con = db.setConnection();
        ArrayList<REstate> pro = new ArrayList<>();
        int i = 0;
        try {

            String sql4 = "Select * from project.realestate where id_user ='" + id_user + "'";

            ResultSet rs4 = db.getResult(sql4, con);

            while (rs4.next()) {
                String sq5 = "Select * from project.real_has_picture where id_real = '" + Integer.toString(rs4.getInt("id_real")) + "' and id_picture = '1'";
                ResultSet rs5 = db.getResult(sq5, con);
                System.out.print("ID: " + rs4.getInt("id_real"));
                while (rs5.next()) {
                    rs4.getInt("id_real");
                    rs5.getString("url");
                    rs4.getInt("price");
                    rs4.getString("street");
                    rs4.getString("wart");
                    rs4.getString("district");
                    REstate temp = new REstate();
                    temp.setRealID(rs4.getInt("id_real"));
                    temp.setPicture1(rs5.getString("url"));
                    temp.setPrice(rs4.getInt("price"));
                    temp.setStreet(rs4.getString("street"));
                    temp.setWard(rs4.getString("wart"));
                    temp.setDistrict(rs4.getString("district"));
                    pro.add(i, temp);
                    ++i;
                    System.out.print(pro);
                }
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return pro;

    }
    
    public ArrayList<REstate> realListBuy() {
        con = db.setConnection();
        ArrayList<REstate> pro = new ArrayList<>();
        int i = 0;
        try {

            String sql4 = "Select * from project.realestate where id_transaction_type = '2' or id_transaction_type = '3' ";

            ResultSet rs4 = db.getResult(sql4, con);

            while (rs4.next()) {
                String sq5 = "Select * from project.real_has_picture where id_real = '" + Integer.toString(rs4.getInt("id_real")) + "' and id_picture = '1'";
                ResultSet rs5 = db.getResult(sq5, con);
                System.out.print("ID: " + rs4.getInt("id_real"));
                while (rs5.next()) {
                    rs4.getInt("id_real");
                    rs5.getString("url");
                    rs4.getInt("price");
                    rs4.getString("street");
                    rs4.getString("wart");
                    rs4.getString("district");
                    REstate temp = new REstate();
                    temp.setRealID(rs4.getInt("id_real"));
                    temp.setPicture1(rs5.getString("url"));
                    temp.setPrice(rs4.getInt("price"));
                    temp.setStreet(rs4.getString("street"));
                    temp.setWard(rs4.getString("wart"));
                    temp.setDistrict(rs4.getString("district"));
                    pro.add(i, temp);
                    ++i;
                    System.out.print(pro);
                }
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return pro;

    }

    public ArrayList<REstate> search(String sql) {
        con = db.setConnection();
        ArrayList<REstate> pro = new ArrayList<>();
        int i = 0;
        try {
            ResultSet searchRs = db.getResult(sql, con);
            while (searchRs.next()) {
                String sq5 = "Select * from project.real_has_picture where id_real = '" + Integer.toString(searchRs.getInt("id_real")) + "' and id_picture = '1'";
                ResultSet rs5 = db.getResult(sq5, con);
                System.out.print("ID: " + searchRs.getInt("id_real"));
                while (rs5.next()) {
                    searchRs.getInt("id_real");
                    rs5.getString("url");
                    searchRs.getInt("price");
                    searchRs.getString("street");
                    searchRs.getString("wart");
                    searchRs.getString("district");
                    REstate temp = new REstate();
                    temp.setRealID(searchRs.getInt("id_real"));
                    temp.setPicture1(rs5.getString("url"));
                    temp.setPrice(searchRs.getInt("price"));
                    temp.setStreet(searchRs.getString("street"));
                    temp.setWard(searchRs.getString("wart"));
                    temp.setDistrict(searchRs.getString("district"));
                    pro.add(i, temp);
                    ++i;
                    System.out.print(pro);
                }
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return pro;
    }

    public category takeCate(int id_category) {
        con = db.setConnection();
        category take = new category();
        try {
            String take1 = "Select * from project.category where id_category ='" + id_category + "'";
            ResultSet takeRS = db.getResult(take1, con);
            while (takeRS.next()) {
                take.setId_category(id_category);
                take.setName(takeRS.getString("name"));
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();;
        }
        return take;
    }

    public range takeRange(int id_range) {
        con = db.setConnection();
        range take = new range();
        try {
            String take1 = "Select * from project.range where id_range ='" + id_range + "'";
            ResultSet takeRS = db.getResult(take1, con);
            while (takeRS.next()) {
                take.setRange_id(id_range);
                take.setLow(takeRS.getInt("low"));
                take.setHigh(takeRS.getInt("high"));
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();;
        }
        return take;
    }

    
    
    public REstate realdetail(int id_real) {
        con = db.setConnection();
        REstate temp = new REstate();
        try {
            String sql4 = "Select * from project.realestate where id_real ='" + id_real + "'";
            String room = "SELECT * FROM project.realestate inner join project.real_has_room on realestate.id_real = real_has_room.id_real inner join project.room_type on real_has_room.id_room_type = room_type.id_room_type inner join project.transaction_type on realestate.id_transaction_type = transaction_type.id_transaction_type where realestate.id_real = '" + id_real + "'";
            String sq5 = "Select * from project.real_has_picture where id_real = '" + id_real + "'";
            ResultSet rs4 = db.getResult(sql4, con);
            ResultSet rs5 = db.getResult(sq5, con);
            ResultSet roomName = db.getResult(room, con);
            int price = 0;
            String transaction = "";
            int i = 0;
            temp.setRealID(id_real);
            rs5.next();
            temp.setPicture1(rs5.getString("url"));
            rs5.next();
            temp.setPicture2(rs5.getString("url"));
            rs5.next();
            temp.setPicture3(rs5.getString("url"));
            rs5.next();
            temp.setPicture4(rs5.getString("url"));
            rs5.next();
            temp.setPicture5(rs5.getString("url"));

            roomName.next();
            temp.setPrice(roomName.getInt("price"));
            temp.setTransaction(roomName.getString("name"));

            temp.setBedroom(roomName.getInt("number_room"));
            roomName.next();
            temp.setBath(roomName.getInt("number_room"));

            while (rs4.next()) {
                temp.setDescription(rs4.getString("description"));
                temp.setStreet(rs4.getString("street"));
                temp.setWard(rs4.getString("wart"));
                temp.setDistrict(rs4.getString("district"));
            }

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return temp;
    }

    public ArrayList<REstate> realListRent() {
        con = db.setConnection();
        ArrayList<REstate> pro = new ArrayList<>();
        int i = 0;
        try {

            String sql4 = "Select * from project.realestate where id_transaction_type = '1' or id_transaction_type = '3' ";

            ResultSet rs4 = db.getResult(sql4, con);

            while (rs4.next()) {
                String sq5 = "Select * from project.real_has_picture where id_real = '" + Integer.toString(rs4.getInt("id_real")) + "' and id_picture = '1'";
                ResultSet rs5 = db.getResult(sq5, con);
                System.out.print("ID: " + rs4.getInt("id_real"));
                while (rs5.next()) {
                    rs4.getInt("id_real");
                    rs5.getString("url");
                    rs4.getInt("price");
                    rs4.getString("street");
                    rs4.getString("wart");
                    rs4.getString("district");
                    REstate temp = new REstate();
                    temp.setRealID(rs4.getInt("id_real"));
                    temp.setPicture1(rs5.getString("url"));
                    temp.setPrice(rs4.getInt("price"));
                    temp.setStreet(rs4.getString("street"));
                    temp.setWard(rs4.getString("wart"));
                    temp.setDistrict(rs4.getString("district"));
                    pro.add(i, temp);
                    ++i;
                    System.out.print(pro);
                }
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return pro;

    }

    public ArrayList<range> rangeList() {
        con = db.setConnection();
        int i = 0;
        ArrayList<range> temp = new ArrayList<>();
        try {
            String sql = "Select * from project.range";
            ResultSet list = db.getResult(sql, con);
            while (list.next()) {
                range r = new range();
                r.setLow(list.getInt("low"));
                r.setHigh(list.getInt("high"));
                r.setRange_id(list.getInt("id_range"));
                temp.add(i, r);
                System.out.print(list.getInt("id_range"));
                ++i;
            }

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return temp;
    }

    public ArrayList<category> categoryList() {
        con = db.setConnection();
        int i = 0;
        ArrayList<category> temp = new ArrayList<>();
        try {
            String sql = "Select * from project.category";
            ResultSet list = db.getResult(sql, con);
            while (list.next()) {
                category r = new category();
                r.setId_category(list.getInt("id_category"));
                r.setName(list.getString("name"));
                System.out.print(list.getString("name"));
                temp.add(i, r);

                ++i;
            }

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return temp;
    }

    public boolean insertPicture(String street, String ward, String district, int price, int id_range, int id_user, int id_transaction_type,
            String description, String owner_email, int phone, String[] url, int bed, int toilet, int category) {
        con = db.setConnection();
        try {
            String sql4 = "Select * from project.realestate where wart = '" + ward + "' and district = '" + district + "' and street = '" + street + "' and phone = '" + phone + "' and price = '" + price + "' and id_range = '" + id_range + "'";
            PreparedStatement stmt = con.prepareStatement(sql4);
            //stmt.setString(1, term + "%");
            ResultSet rs4 = stmt.executeQuery();
            //ResultSet rs4 = db.getResult(sql4, con);
            System.out.printf(sql4);
            int id_real = 0;
            //boolean abc = rs4.next();
            //System.out.print("jujuj " + abc);
            while (rs4.next()) {
                id_real = rs4.getInt("id_real");
            }
            PreparedStatement ps1 = null;
            System.out.println(id_real);

            for (int i = 0; i < url.length; ++i) {
                System.out.print(url[i]);
                String sql1 = "Insert Into project.real_has_picture(id_picture,id_real, url) values(?,?,?)";
                ps1 = con.prepareStatement(sql1);
                ps1.setInt(1, i + 1);
                ps1.setInt(2, id_real);
                ps1.setString(3, url[i]);
                int result = ps1.executeUpdate();
            }

            ps1.close();
            con.close();

        } catch (Exception e) {
            e.printStackTrace();;

        }

        return false;
    }

    public boolean insertRoom(String street, String ward, String district, int price, int id_range, int id_user, int id_transaction_type,
            String description, String owner_email, int phone, String[] url, int bed, int toilet, int category) {
        con = db.setConnection();
        try {
            String sql4 = "Select * from project.realestate where wart = '" + ward + "' and district = '" + district + "' and street = '" + street + "' and phone = '" + phone + "' and price = '" + price + "' and id_range = '" + id_range + "'";
            PreparedStatement stmt = con.prepareStatement(sql4);
            //stmt.setString(1, term + "%");
            ResultSet rs4 = stmt.executeQuery();
            //ResultSet rs4 = db.getResult(sql4, con);
            System.out.printf(sql4);
            int id_real = 0;
            //boolean abc = rs4.next();
            //System.out.print("jujuj " + abc);
            while (rs4.next()) {
                id_real = rs4.getInt("id_real");
            }
            PreparedStatement ps1 = null;
            System.out.println(id_real);

            for (int i = 0; i < 2; ++i) {

                String sql1 = "Insert Into project.real_has_room(id_real, id_room_type, number_room) values(?,?,?)";
                ps1 = con.prepareStatement(sql1);
                ps1.setInt(1, id_real);
                ps1.setInt(2, i + 1);
                if (i == 0) {
                    ps1.setInt(3, bed);
                } else {
                    ps1.setInt(3, toilet);
                }
                int result = ps1.executeUpdate();

            }

            ps1.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean updateGenre(String newGenre, String oldGenre) {
        con = db.setConnection();
        try {

            String sql = "update genre set Genre_Name ='" + newGenre + "' where Genre_Name ='" + oldGenre + "'";
            db.getResultDo(sql, con);
            con.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean updateReal(int id_real, int price, int id_transaction_type, String description, int id_range) {
        con = db.setConnection();
        try {

            String sql = "update project.realestate set price ='" + price + "', id_transaction_type ='" + id_transaction_type + "', description ='" + description + "', id_range ='" + id_range + "'  where id_real ='" + id_real + "'";
            System.out.print(sql);
            db.getResultDo(sql, con);
            con.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean insertCareer(String content, String daytime) {
        con = db.setConnection();
        try {

            String sql = "Insert Into project.career (daytime,content) values(?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, daytime);
            ps.setString(2, content);
            int result = ps.executeUpdate();

            ps.close();
            con.close();

            if (result > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean updateUser(String id, String fullname, String user, String pass, String email, String phone, String role) {
        con = db.setConnection();
        try {

            String sql = "update project.account set Fullname ='" + fullname + "', Username ='" + user + "', Pass_word ='" + pass
                    + "', Email ='" + email + "', Phone_Num ='" + phone + "', Role_ID ='" + role + "' where User_ID ='" + id + "'";
            db.getResultDo(sql, con);
            con.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean updateMovie(String oldName, String name, String actor, String infor, String genre,
            String director, String length, String year, String place, String id, String picture, String view, String links) {
        con = db.setConnection();
        try {

            String sql = "update movie set Movie_ID ='" + id + "',Movie_Name ='" + name + "',Movie_Picture ='" + picture + "',Movie_Actor='" + actor + "',"
                    + "Movie_Information='" + infor + "',Movie_Genre='" + genre + "',Movie_Director='" + director + "',"
                    + "Movie_Length='" + length + "',Movie_Year='" + year + "',Movie_Place='" + place + "',Movie_Views='" + view + "',Movie_Links='" + links + "'"
                    + " where Movie_Name ='" + oldName + "'";
            db.getResultDo(sql, con);
            con.close();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean deleteGenre(String genreName) {
        con = db.setConnection();
        try {

            String sql = "Delete from genre where Genre_Name ='" + genreName + "'";
            db.getResultDo(sql, con);
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean deletereal(int id_real) {
        con = db.setConnection();
        try {

            String sql = "Delete from project.real_has_picture where id_real ='" + id_real + "'";
            db.getResultDo(sql, con);
            System.out.print(sql);
            String sq2 = "Delete from project.real_has_room where id_real ='" + id_real + "'";
            db.getResultDo(sq2, con);
            String sq3 = "Delete from project.realestate where id_real ='" + id_real + "'";
            System.out.print(sq3);
            db.getResultDo(sq3, con);
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean deteleCate(int id_category) {
        con = db.setConnection();
        try {
            String sql = "Delete from project.category where id_category ='" + id_category + "'";
            db.getResultDo(sql, con);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean deteleRange(int id_range) {
        con = db.setConnection();
        try {
            String sql = "Delete from project.range where id_range ='" + id_range + "'";
            db.getResultDo(sql, con);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean deleteMovie(String movieName) {
        con = db.setConnection();
        try {

            String sql = "Delete from movie where Movie_Name ='" + movieName + "'";
            db.getResultDo(sql, con);
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean deleteUser(String id) {
        con = db.setConnection();
        try {

            String sql = "Delete from account where User_ID ='" + id + "'";
            db.getResultDo(sql, con);
            con.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean checkPassMD5(String username, String pass) {
        con = db.setConnection();

        try {

            String sql = "Select * From User Where Username='" + username + "' and Password='" + pass + "'";
            ResultSet rs = db.getResult(sql, con);
            boolean result = rs.next();
            rs.close();
            con.close();
            if (result) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public ArrayList<String> getDataForSearch(String term) {
        con = db.setConnection();
        ArrayList<String> list = new ArrayList<>();
        String SELECT = "SELECT * FROM Problem where Header like '%" + term + "%'";
        String data;
        try {

            PreparedStatement stmt = con.prepareStatement(SELECT);
            //stmt.setString(1, term + "%");
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                data = rs.getString("Header");
                list.add(data);
            }
            con.close();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }

        return list;

    }

}
