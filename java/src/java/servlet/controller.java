/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import utilities.*;
import bean.*;
import com.oreilly.servlet.MultipartRequest;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import java.sql.SQLException;

import java.util.ArrayList;

import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.multipart.MultipartParser;
import com.oreilly.servlet.multipart.Part;
import com.oreilly.servlet.multipart.FilePart;
import db.DatabaseConnection;
import java.sql.Connection;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import javax.servlet.annotation.MultipartConfig;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

@WebServlet(name = "controller", urlPatterns = {"/controller"})
//@MultipartConfig
public class controller extends HttpServlet {

    final private String log = "login.jsp";
    final private String reg = "register.jsp";
    final private String update = "update.jsp";
    final private String lost = "lost.jsp";
    final private String index = "index.jsp";
    final private String search = "search.jsp";
    final private String admin = "admin.jsp";
    final private String manageUser = "admin_manageUser.jsp";
    final private String editUser = "editUser.jsp";
    final private String editPro = "editReal.jsp";
    final private String detail = "single.jsp";


    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.sql.SQLException
     * @throws java.lang.ClassNotFoundException
     * @throws java.lang.InstantiationException
     * @throws java.lang.IllegalAccessException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, ClassNotFoundException, InstantiationException, IllegalAccessException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        try {
            DatabaseConnection db = new DatabaseConnection();
            Connection con = db.setConnection();
            String action = request.getParameter("action");
            System.out.print("action: " + action);
            switch (action) {

                case "admin":
                    dispatcher(request, response, admin);
                    break;

  
                case "editPro":
                    dispatcher(request, response, editPro);
                    break;
   
                case "manageUser":
                    dispatcher(request, response, manageUser);
                    break;
                case "editUser":
                    dispatcher(request, response, editUser);
                    break;
                case "updateUser":
                    DAO updateUser = new DAO();
                    updateUser.updateUser(request.getParameter("User_ID"), request.getParameter("Fullname"), request.getParameter("Username"),
                            request.getParameter("Pass_word"), request.getParameter("Email"), request.getParameter("Phone_num"), request.getParameter("Role"));
                    dispatcher(request, response, manageUser);
                    break;
                case "deleteUser":
                    DAO deleteUser = new DAO();
                    deleteUser.deleteUser(request.getParameter("id"));
                    dispatcher(request, response, manageUser);
                    break;

//                        file.delete();
//                
                case "search":
                    System.out.print(1);
                    String district10 = request.getParameter("District");

                    String price10 = request.getParameter("price");
                    String sql12 = "Select * from project.range";
                    int id_range12 = 0;
                    ResultSet rs12 = db.getResult(sql12, con);
                    while (rs12.next()) {
                        String temp = Integer.toString(rs12.getInt("low")) + "-" + Integer.toString(rs12.getInt("high"));
                        System.out.print(temp);
                        if (temp.equals(price10)) {
                            id_range12 = rs12.getInt("id_range");
                            break;
                        }
                    }

                    String transaction = request.getParameter("transaction");
                    String sql10 = "Select * from project.transaction_type where transaction_type.name = '" + transaction + "'";
                    int id_transaction_type10 = 0;
                    ResultSet rs10 = db.getResult(sql10, con);

                    while (rs10.next()) {
                        id_transaction_type10 = rs10.getInt("id_transaction_type");
                    }
                    System.out.print(id_transaction_type10);

                    String category10 = request.getParameter("category");
                    System.out.print(category10);
                    String sql11 = "Select * from project.category where category.name = '" + category10 + "'";
                    int id_category10 = 0;
                    ResultSet rs11 = db.getResult(sql11, con);

                    while (rs11.next()) {
                        id_category10 = rs11.getInt("id_category");
                    }
                    System.out.print(id_category10);
                    String sql15 = "Select * from project.realestate where district ='" + district10 + "' or id_range = '" + id_range12 + "' or id_transaction_type ='" + id_category10 + "' or category ='" + id_category10 + "'";
                    System.out.print(sql15);
                    DAO searchPro = new DAO();
                    ArrayList<REstate> resultSearch = searchPro.search(sql15);
                    session.setAttribute("searchPro", resultSearch);
                    dispatcher(request, response, "newjsp.jsp");
                    break;

                case "updateReal":
                    DAO updateReal = new DAO();
                    int id_real = Integer.parseInt(request.getParameter("id"));
                    System.out.print(request.getParameter("kind"));
                    System.out.print(id_real);

                    int price2 = Integer.parseInt(request.getParameter("price"));

                    String kind1 = request.getParameter("kind");

                    String sql3 = "Select * from project.transaction_type where transaction_type.name = '" + kind1 + "'";
                    String description1 = request.getParameter("description");
                    int id_transaction_type1 = 0;
                    ResultSet rs3 = db.getResult(sql3, con);

                    while (rs3.next()) {
                        id_transaction_type1 = rs3.getInt("id_transaction_type");
                    }
                    String sql14 = "Select * from project.range";
                    ResultSet rs14 = db.getResult(sql14, con);
                    int id_range1 = 0;
                    while (rs14.next()) {
                        int low = rs14.getInt("low");
                        int hight = rs14.getInt("high");

                        if (price2 >= low && price2 <= hight) {
                            id_range1 = rs14.getInt("id_range");

                            break;
                        }
                    }
                    updateReal.updateReal(id_real, price2, id_transaction_type1, description1, id_range1);
                    dispatcher(request, response, "admin_manageProperty.jsp");
                    break;
                case "deleteReal":
                    DAO real = new DAO();
                    real.deletereal(Integer.parseInt(request.getParameter("id")));

                    dispatcher(request, response, "admin_manageProperty.jsp");
                    break;
                case "deleteCate":
                    DAO cate = new DAO();
                    cate.deteleCate(Integer.parseInt(request.getParameter("id_cate")));

                    dispatcher(request, response, "controller?action=rangelist");
                    break;
                
                    
                case "addRange":
                    System.out.print(request.getParameter("id_range"));
                    session.setAttribute("id_range", Integer.parseInt(request.getParameter("id_range")));
                    dispatcher(request, response, "admin_addRange.jsp");
                    
                case "addRange2":
                    DAO addRange2 = new DAO();
                    int id_range4 = Integer.parseInt(request.getParameter("id_range"));
                    int low4 = Integer.parseInt(request.getParameter("low"));
                    int high4 = Integer.parseInt(request.getParameter("high"));
                    System.out.print(id_range4 + " " + low4 + " " + high4);
                    addRange2.addRange(id_range4, low4, high4);
                    dispatcher(request, response, "controller?action=rangelist");
                    break;
                case "addcate":
                    dispatcher(request, response, "admin_addCate.jsp");
                    break;
                case "addCategory":
                    DAO addCate = new DAO();
                    String nameCategory = request.getParameter("cateName");
                    System.out.print(nameCategory);
                    addCate.addCate(nameCategory);
                    dispatcher(request, response, "controller?action=rangelist");
                    break;
                case "editCate":
                    DAO edit = new DAO();
                    Integer id_cate = Integer.parseInt(request.getParameter("id_cate"));
                    category takeCate = edit.takeCate(id_cate);
                    session.setAttribute("takeCate", takeCate);
                    dispatcher(request, response, "admin_editCate.jsp");
                    break;

                case "editRange":
                    DAO edit1 = new DAO();
                    Integer id_range2 = Integer.parseInt(request.getParameter("id_range"));
                    range takeRange = edit1.takeRange(id_range2);
                    session.setAttribute("takeRange", takeRange);

                    dispatcher(request, response, "admin_editRange.jsp");
                    break;

                case "updateCate":
                    DAO editCate = new DAO();
                    String nameEdit = request.getParameter("cateName");

                    System.out.print(nameEdit);

                    Integer id_cateEdit = Integer.parseInt(request.getParameter("id_category"));
                    editCate.updateCate(nameEdit, id_cateEdit);
                    dispatcher(request, response, "controller?action=rangelist");
                    break;

                case "updateRange":
                    DAO editRange1 = new DAO();
                    int id_range3 = Integer.parseInt(request.getParameter("id_range"));
                    int high1 = Integer.parseInt(request.getParameter("high"));
                    int low1 = Integer.parseInt(request.getParameter("low"));
                    System.out.print(low1 + " " + high1);
                    editRange1.updateRange(id_range3, low1, high1);
                    dispatcher(request, response, "controller?action=rangelist");
                    break;

                case "cancel":
                    dispatcher(request, response, index);
                    break;
                case "index":
                    dispatcher(request, response, index);
                    break;
                case "error":
                    dispatcher(request, response, index);
                    break;
                case "done":
                    dispatcher(request, response, index);
                    break;
                case "log":
                    dispatcher(request, response, log);
                    break;
                case "lost":
                    dispatcher(request, response, lost);
                    break;
                case "reg":
                    dispatcher(request, response, reg);
                    break;
                case "contactOwner":
                    int id10 = Integer.parseInt(request.getParameter("id"));
                    System.out.print(id10);
                    dispatcher(request, response, "contact.jsp");
                    break;
                case "update": {
                    User show = new User();
                    ArrayList<User> result = show.displayPersonalInformation((String) session.getAttribute("user"));
                    request.setAttribute("User_infor", result);
                    dispatcher(request, response, update);
                    break;
                }
                case "checklogin": {
                    String username = request.getParameter("username");
                    String password = request.getParameter("password");
                    String hashPass = Security.encrypt(password);
                    DAO checklog = new DAO();
                    boolean result = checklog.checkLogin(username, hashPass);
                    if (result) {
                        out.print("Login successful");
                    } else {
                        out.print("Wrong user or password");
                    }
                    break;
                }

                case "buy":

                    DAO rs = new DAO();
                    ArrayList<REstate> result1 = rs.realListRent();
                    //System.out.print(result1);

                    session.setAttribute("List", result1);
                    //System.out.print(session.getAttribute("List"));
                    dispatcher(request, response, "buy.jsp");
                    break;

                case "rangelist":
                    DAO rangeL = new DAO();
                    ArrayList<range> range_list = rangeL.rangeList();
                    session.setAttribute("range", range_list);
                    System.out.print(session.getAttribute("range"));

                    ArrayList<category> category_list = rangeL.categoryList();
                    session.setAttribute("category", category_list);

                    dispatcher(request, response, "admin_range.jsp");
                    break;

                case "rent":
                    DAO rs2 = new DAO();
                    ArrayList<REstate> result2 = rs2.realListBuy();
                    System.out.print(result2);
                    session.setMaxInactiveInterval(900);
                    session.setAttribute("List", result2);
                    System.out.print(session.getAttribute("List"));
                    dispatcher(request, response, "buy.jsp");
                    break;

                case "realDetail":
                    DAO detail = new DAO();
                    int id_real1 = Integer.parseInt(request.getParameter("id"));
                    REstate r = detail.realdetail(id_real1);
                    session.setAttribute("single", r);
                    dispatcher(request, response, "single.jsp");
                    break;

                case "Login": {
                    String username = request.getParameter("u_name");

                    User user = new User();
                    ArrayList<User> uname = user.getUser(username);
                    ArrayList<User> userAds = user.displayPersonalInformation(username);
                    String id = "";
                    for (User u : uname) {
                        id = u.getUser_ID();
                    }
                    boolean isAdmin = isAdmin(userAds);
                    boolean isStaff = isStaff(userAds);
                    if (isAdmin) {
                        session.setMaxInactiveInterval(900);
                        session.setAttribute("user", username);
                        session.setAttribute("isAdmin", "true");
                        session.setAttribute("isStaff", "true");
                        session.setAttribute("id_user", id);
                        dispatcher(request, response, admin);
                        break;
                    } else if (isStaff) {
                        session.setMaxInactiveInterval(900);
                        session.setAttribute("user", username);
                        session.setAttribute("isAdmin", "false");
                        session.setAttribute("isStaff", "true");
                        session.setAttribute("id_user", id);
                        dispatcher(request, response, admin);
                        break;
                    } else {
                        session.setMaxInactiveInterval(900);
                        session.setAttribute("user", username);
                        session.setAttribute("isAdmin", "false");
                        session.setAttribute("isStaff", "false");
                        session.setAttribute("id_user", id);
                        dispatcher(request, response, index);
                        break;
                    }
                }
                case "logout":
                    boolean x = true;
                    Cookie loginCookie = null;
                    Cookie[] cookies = request.getCookies();
                    if (cookies != null) {
                        for (Cookie cookie : cookies) {
                            if (cookie.getName().equals("user")) {
                                loginCookie = cookie;
                            }
                        }

                        if (loginCookie != null) {
                            loginCookie.setMaxAge(0);
                            response.addCookie(loginCookie);
                            x = false;
                        }
                    }
                    if (session != null) {

                        session.invalidate();
                        x = false;
                    }
                    if (x == false) {
                        dispatcher(request, response, index);
                    }
                    break;
                case "checkuser": {
                    String username = request.getParameter("ver");
                    System.out.println(username);
                    DAO checkuser = new DAO();
                    boolean result = checkuser.checkUser(username);
                    if (result) {
                        out.print("Name already taken");

                    } else {
                        out.println("<font color=green>");
                        out.print("Avaiable");
                        out.println("</font>");
                    }
                    break;
                }
                case "register": {
                    String username = request.getParameter("u_name");
                    String pass = request.getParameter("pass");
                    String hash = Security.encrypt(pass);
                    String email = request.getParameter("email");
                    String phone = request.getParameter("phone");
                    String fullname = request.getParameter("fullname");
                    int role = 3;
                    DAO register = new DAO();
                    boolean res = register.checkUser(username);
                    if (res) {
                        request.setAttribute("error", "<font color=red>Username is already existed</font>");
                        dispatcher(request, response, reg);
                    } else {
                        register.register(username, hash, fullname, email, phone, role);
                        dispatcher(request, response, log);
                        Email.registerAndSendEmail(email, username, pass, fullname, phone);
                    }
                    break;
                }

                case "updatePerson": {
                    String username = request.getParameter("username");
                    String fullname = request.getParameter("fullname");
                    String email = request.getParameter("email");
                    String phone = request.getParameter("phone");
                    String pass = request.getParameter("pass");
                    String hashPass = Security.encrypt(pass);
                    DAO checkPass = new DAO();
                    boolean result = checkPass.checkPassMD5(username, pass);
                    if (result) {
                        DAO updatePerson = new DAO();
                        updatePerson.updatePerson(username, pass, fullname, email, phone);
                        response.sendRedirect("controller?action=done");
                    } else {
                        DAO updatePerson = new DAO();
                        updatePerson.updatePerson(username, hashPass, fullname, email, phone);
                        response.sendRedirect("controller?action=done");
                    }
                    break;
                }
                
               

                case "upload": {

                    String dirNames = "G:/project/real/web/Database";

                    //User newUser = (User) session.getAttribute("user");
                    String user = (String) session.getAttribute("user");

                    String fileName = null;
                    boolean isMultiPArt = ServletFileUpload.isMultipartContent(request);

                    if (isMultiPArt) {
                        FileItemFactory factory = new DiskFileItemFactory();
                        ServletFileUpload upload = new ServletFileUpload(factory);
                        List items = null;
                        try {
                            items = upload.parseRequest(request);
                        } catch (FileUploadException e) {
                            e.printStackTrace();
                        }
                        Iterator iter = items.iterator();
                        Hashtable params = new Hashtable();

                        File theDir = new File(dirNames + File.separator + user);

                        // if the directory does not exist, create it
                        if (!theDir.exists()) {
                            System.out.println("creating directory: " + user);
                            boolean result = false;

                            try {
                                theDir.mkdir();
                                result = true;
                            } catch (SecurityException se) {
                                //handle it
                            }
                            if (result) {
                                System.out.println("DIR created");
                            }
                        }
                        String[] url = new String[5];
                        int cnt = 0;
                        while (iter.hasNext()) {
                            FileItem item = (FileItem) iter.next();
                            if (item.isFormField()) {
                                params.put(item.getFieldName(), item.getString());
                            } else {
                                try {
                                    String itemName = item.getName();
                                    fileName = itemName.substring(itemName.lastIndexOf("\\") + 1);
                                    System.out.println("path: " + fileName);
                                    String realPath = dirNames + File.separator + user + File.separator + fileName;
                                    System.out.println("realPath: " + realPath);
                                    File savedFile = new File(realPath);
                                    item.write(savedFile);
                                    url[cnt] = "./Database" + File.separator + user + File.separator + fileName;
                                    ++cnt;
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                            }
                        }

                        String fullname1 = (String) params.get("FullName");
                        String fullname = null;
                        User show = new User();
                        ArrayList<User> result = show.displayPersonalInformation(user);
                        for (User u : result) {
                            fullname = u.getFullname();
                        }
                        System.out.println("fullname: " + fullname);
                        String street = (String) params.get("street");
                        String ward = (String) params.get("ward");
                        String district = (String) params.get("district");
                        String type = (String) params.get("type");
                        String bedroom = (String) params.get("bed");
                        int bed = Integer.parseInt(bedroom);
                        String toilet = (String) params.get("toilet");
                        int toi = Integer.parseInt(toilet);
                        String kind = (String) params.get("kind");
                        String phone = (String) params.get("phone");

                        String description = (String) params.get("description");
                        String owner_email = (String) params.get("Email");
                        String category1 = (String) params.get("category");
                        int phone_number = Integer.parseInt(phone);
                        String price1 = (String) params.get("price");
                        int price = Integer.parseInt(price1);

                        String sql = "Select * from project.account where account.Username = '" + user + "'";
                        ResultSet sql1 = db.getResult(sql, con);
                        int id_user = 0;
                        while (sql1.next()) {
                            id_user = sql1.getInt("User_id");
                        }
                        out.print(id_user);
                        int id_range = 0;
                        int id_transaction_type = 0;
                        String sql4 = "Select * from project.range";
                        ResultSet rs4 = db.getResult(sql4, con);
                        String sql5 = "Select * from project.transaction_type where transaction_type.name = '" + kind + "'";
                        ResultSet rs5 = db.getResult(sql5, con);

                        while (rs5.next()) {
                            id_transaction_type = rs5.getInt("id_transaction_type");
                        }
                        String sql9 = "Select * from project.category where category.name = '" + category1 + "'";
                        ResultSet rs9 = db.getResult(sql9, con);
                        int category = 0;
                        while (rs9.next()) {
                            category = rs9.getInt("id_category");
                        }
                        while (rs4.next()) {
                            int low = rs4.getInt("low");
                            int hight = rs4.getInt("high");

                            if (price >= low && price <= hight) {
                                id_range = rs4.getInt("id_range");

                                break;
                            }
                        }
                        System.out.print(id_range);

                        DAO uploadReal = new DAO();
                        uploadReal.insertReal(street, ward, district, price, id_range, id_user, id_transaction_type, description, owner_email, phone_number, url, bed, toi, category, fullname1);
                        if (uploadReal.insertReal(street, ward, district, price, id_range, id_user, id_transaction_type, description, owner_email, phone_number, url, bed, toi, category, fullname1)) {
                            uploadReal.insertPicture(street, ward, district, price, id_range, id_user, id_transaction_type, description, owner_email, phone_number, url, bed, toi, category);
                            uploadReal.insertRoom(street, ward, district, price, id_range, id_user, id_transaction_type, description, owner_email, phone_number, url, bed, toi, category);
                        }
                        System.out.println("user: " + user);

//                        newUser = new User();
//                        newUser.setEmail(Email);
                        out.print(url[0]);
                        String temp = ".\\User" + File.separator + user + File.separator + fileName;
                        System.out.println("Temp " + temp);

                        //Connector.editUser(myProfile.getEmail(), newUser);
                        //response.sendRedirect("index.jsp");
                        dispatcher(request, response, "index.jsp");
                    }
                }

                case "career": {
                    String daytime = request.getParameter("daytime");
                    String content = request.getParameter("content");
                    DAO uploadCareer = new DAO();
                    uploadCareer.insertCareer(content, daytime);
                    dispatcher(request, response, "index.jsp");
                }

                case "updateCareer": {

                }

                case "recovery":
                    try {
                        String name = request.getParameter("u_name");
                        User doIt = new User();
                        ArrayList<User> result = doIt.getUser(name);
                        String pass = "";
                        String username = "";
                        String email = "";
                        for (User u : result) {
                            pass = Security.decrypt(u.getPassword());
                            username = u.getUsername();
                            email = u.getEmail();
                        }
                        if (username.equals("null") || username.equals("")) {
                            out.print("<html>\n"
                                    + "<head>\n"
                                    + "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n"
                                    + "<meta charset=\"utf-8\">\n"
                                    + "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n"
                                    + "<title>Recovery Page</title>\n"
                                    + "\n"
                                    + "<link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n"
                                    + "<link href=\"css/datepicker3.css\" rel=\"stylesheet\">\n"
                                    + "<link href=\"css/styles.css\" rel=\"stylesheet\">\n"
                                    + "\n"
                                    + "<!--[if lt IE 9]>\n"
                                    + "<script src=\"js/html5shiv.js\"></script>\n"
                                    + "<script src=\"js/respond.min.js\"></script>\n"
                                    + "<![endif]-->\n"
                                    + "\n"
                                    + "</head>\n"
                                    + "\n"
                                    + "<body>\n"
                                    + "	\n"
                                    + "	<div class=\"row\">\n"
                                    + "		<div class=\"col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4\">\n"
                                    + "			<div class=\"login-panel panel panel-default\">\n"
                                    + "<div class=\"panel-body\">\n"
                                    + "                                    <em><FONT SIZE=\"3\">Welcome to Real Home </font></em>\n"
                                    + "				</div>"
                                    + "				<div class=\"panel-heading\">Try again</div>\n"
                                    + "				<div class=\"panel-body\">\n"
                                    + "					<form action=\"controller?action=recovery\" method=\"post\">\n"
                                    + "						<fieldset>\n"
                                    + "							<div class=\"form-group\">");
                            out.print("<center>");
                            out.print("<a style=\"text-decoration: none\" href=\"lost.jsp\">-_- please enter correct your username</a>");
                            out.print("<br>or<br><a href=\"/OnlineMovieStreaming\">click here to come back homepages !!!!</a>");
                            out.print("</center>");
                            out.print("</div>\n"
                                    + "                                                    \n"
                                    + "							\n"
                                    + "							\n"
                                    + "						</fieldset>\n"
                                    + "					</form>\n"
                                    + "				</div>\n"
                                    + "			</div>\n"
                                    + "		</div><!-- /.col-->\n"
                                    + "	</div><!-- /.row -->	\n"
                                    + "		\n"
                                    + "</body>\n"
                                    + "\n"
                                    + "</html>");
                        } else {

                            out.print("<html>\n"
                                    + "<head>\n"
                                    + "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n"
                                    + "<meta charset=\"utf-8\">\n"
                                    + "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n"
                                    + "<title>Recovery Page</title>\n"
                                    + "\n"
                                    + "<link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n"
                                    + "<link href=\"css/datepicker3.css\" rel=\"stylesheet\">\n"
                                    + "<link href=\"css/styles.css\" rel=\"stylesheet\">\n"
                                    + "\n"
                                    + "<!--[if lt IE 9]>\n"
                                    + "<script src=\"js/html5shiv.js\"></script>\n"
                                    + "<script src=\"js/respond.min.js\"></script>\n"
                                    + "<![endif]-->\n"
                                    + "\n"
                                    + "</head>\n"
                                    + "\n"
                                    + "<body>\n"
                                    + "	\n"
                                    + "	<div class=\"row\">\n"
                                    + "		<div class=\"col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4\">\n"
                                    + "			<div class=\"login-panel panel panel-default\">\n"
                                    + "<div class=\"panel-body\">\n"
                                    + "                                    <em><FONT SIZE=\"3\">Welcome to Real Home </font></em>\n"
                                    + "				</div>"
                                    + "				<div class=\"panel-heading\">You input correct username</div>\n"
                                    + "				<div class=\"panel-body\">\n"
                                    + "					<form action=\"controller?action=recovery\" method=\"post\">\n"
                                    + "						<fieldset>\n"
                                    + "							<div class=\"form-group\">");
                            out.print("<center>");
                            out.print("<font color=\"red\">Your password have sent to your email</font>");
                            out.print("<br><br><a style=\"text-decoration: none\" target=\"_blank\" href=\"https://mail.google.com/\">Click here to go to your email</a>");
                            out.print("<br>or<br><a href=\"/OnlineMovieStreaming\">Click here to come back homepages !!!!</a>");
                            Email.generateAndSendEmail(email, username, pass);
                        }
                        out.print("</center>");
                        out.print("</div>\n"
                                + "                                                    \n"
                                + "							\n"
                                + "							\n"
                                + "						</fieldset>\n"
                                + "					</form>\n"
                                + "				</div>\n"
                                + "			</div>\n"
                                + "		</div><!-- /.col-->\n"
                                + "	</div><!-- /.row -->	\n"
                                + "		\n"
                                + "</body>\n"
                                + "\n"
                                + "</html>");

                    } finally {
                        out.close();
                    }
                    break;
            }

        } finally {
            out.close();
        }
    }

    public void dispatcher(HttpServletRequest request, HttpServletResponse response, String page) throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher(page);
        rd.forward(request, response);

    }

    public boolean isAdmin(ArrayList<User> user) {
        String Role_ID = "3";
        for (User u : user) {
            Role_ID = u.getRole_ID();
        }
        return Role_ID.equals("1");
    }

    public boolean isStaff(ArrayList<User> user) {
        String Role_ID = "3";
        for (User u : user) {
            Role_ID = u.getRole_ID();
        }
        return Role_ID.equals("2");
    }

// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);

        } catch (SQLException | ClassNotFoundException | InstantiationException | IllegalAccessException ex) {
            Logger.getLogger(controller.class
                    .getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(controller.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);

        } catch (SQLException | ClassNotFoundException | InstantiationException | IllegalAccessException ex) {
            Logger.getLogger(controller.class
                    .getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(controller.class
                    .getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
