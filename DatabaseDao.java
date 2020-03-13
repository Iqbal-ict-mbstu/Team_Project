import java.sql.*;

public class DatabaseDao{
    private Connection con = null;
    public void connect()
    {

        try{
            Class.forName("com.mysql.jdbc.Driver");
             con= DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/stock","root","");
             if(con!=null)
             {
                 System.out.println("Connected");
             }
             else
             {
                 System.out.println("not connected");
             }

        }catch(Exception e){ System.out.println(e);}

    }
    public  void insert(String name ,String email,String address,String password)  throws  Exception
    {
        connect();
        String sql = "insert into reg values(?,?,?,?)";
        PreparedStatement pst =  con.prepareStatement(sql);
        pst.setString(1,name);
        pst.setString(2,email);
        pst.setString(3,address);
        pst.setString(4,password);
        pst.executeUpdate();
        pst.close();
        con.close();
        System.out.println("inserted successfully");
    }
    public void getData(String mail,String password) throws SQLException {
        connect();
        String email= '"' + mail + '"';
        //  System.out.println(em);

        String sql = "select *from reg where email = "+email;
        System.out.println(sql);
        Statement st =con.createStatement();

        ResultSet rs = st.executeQuery(sql);
        if(rs==null)
        {
            System.out.println("username or password is wrong");
        }
        else
        {
            while (rs.next())
            {
                System.out.println("Start");
                String name=rs.getString("name");
                String emai1= rs.getString("email");
                String password1 = rs.getString("password");
                System.out.println(name+" "+emai1+" "+password1);
                if(password.equals(password1))
                {
                    System.out.println("email and password is valid");

                }
                else {
                    System.out.println("invalid email and password");
                }
            }
            rs.close();
            con.close();
        }


    }

}
