using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
public partial class UserInfo : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\aputa\OneDrive\Documents\Visual Studio 2015\Websites\BloodDonation\App_Data\Database.mdf;Integrated Security=True");

    string email, mobile, name, bg, address, url, age, ht, wt, gender;


    protected void Page_Load(object sender, EventArgs e)
    {
        string email2 = Session["Email"].ToString();
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from Registration where Email=@Email", con);
        cmd.Parameters.AddWithValue("@Email", email2);
        SqlDataReader myReader;

        myReader = cmd.ExecuteReader();

        while (myReader.Read())
        {
            email = myReader["Email"].ToString();
            mobile = myReader["Mobile"].ToString();
            name = myReader["Name"].ToString();
            bg = myReader["Blood_Group"].ToString();
            address = myReader["Address"].ToString();
            url = myReader["Image"].ToString();
            age = myReader["Age"].ToString();
            wt = myReader["Weight"].ToString();
            ht = myReader["Height"].ToString();
            gender = myReader["Gender"].ToString();
        }

        txtName.Text = name;
        txtEmail.Text = email;
        txtMobile.Text = mobile;
        txtGender.Text = gender;
        txtWeight.Text = wt;
        txtHeight.Text = ht;
        txtAge.Text = age;
        txtAddress.Text = address;
        txtBg.Text = bg;
        Image1.ImageUrl = url;

        myReader.Close();

        con.Close();
    }
}