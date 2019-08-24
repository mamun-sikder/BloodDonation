using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class ReqBloodDonation : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\project\BloodDonation.com\App_Data\bloodDatabase.mdf;Integrated Security=True");
    string email, mobile, name, bg, address, url;

    protected void Page_Load(object sender, EventArgs e)
    {
        string email2 = Session["Email"].ToString();
        con.Open();
        SqlCommand selectCommand = new SqlCommand("Select * From Registration where Email =@email", con);
        selectCommand.Parameters.AddWithValue("@Email", email2);
        SqlDataReader myReader;
        myReader = selectCommand.ExecuteReader();

        while(myReader.Read())
        {
            email = myReader["Email"].ToString();
            mobile = myReader["Mobile"].ToString();
            name = myReader["Name"].ToString();
            bg = myReader["Blood_Group"].ToString();
            address = myReader["Address"].ToString();
            url = myReader["Image"].ToString();
        }

        Image1.ImageUrl = url;
        Image1.Width = 200;
        Image1.Height = 200;
        txtName.Text = name;
        txtEmail.Text = email;
        txtMobile.Text = mobile;
        txtAddress.Text = address;
        txtBg.Text = bg;

        con.Close();

    }

    protected void btn_Click(object sender, EventArgs e)
    {
        con.Open();

        SqlCommand cmd = new SqlCommand("Insert into DonorRegistration values(@Name,@Email,@Mobile,@Bg,@Address,@Image)", con);

        cmd.Parameters.AddWithValue("@Name", name);
        cmd.Parameters.AddWithValue("@Email", email);
        cmd.Parameters.AddWithValue("@Mobile", mobile);
        cmd.Parameters.AddWithValue("@Bg", bg);
        cmd.Parameters.AddWithValue("@Address", address);
        cmd.Parameters.AddWithValue("@Image", url);

        cmd.ExecuteNonQuery();
        con.Close();


        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert('Request Added Successfully...!!!');window.location='Home.aspx';", true);

    }
}