﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class BloodRequest : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\project\BloodDonation.com\App_Data\bloodDatabase.mdf;Integrated Security=True");

    string email, mobile, name, bg, address, url;
    protected void Page_Load(object sender, EventArgs e)
    {
        string email2 = Session["Email"].ToString();
        con.Open();
        SqlCommand cmd1 = new SqlCommand("select * from Registration where Email=@Email", con);
        cmd1.Parameters.AddWithValue("@Email", email2);
        SqlDataReader myReader;

        myReader = cmd1.ExecuteReader();

        while(myReader.Read())
        {
            name = myReader["Name"].ToString();
            email = myReader["Email"].ToString();
            mobile = myReader["Mobile"].ToString();
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
        txtBG.Text = bg;


        con.Close();

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();

        SqlCommand cmd2 = new SqlCommand("insert into BloodRequest values (@Name,@bg,@Email,@Mobile,@Address)", con);

        cmd2.Parameters.AddWithValue("@Name", name);
        cmd2.Parameters.AddWithValue("@bg", bg);
        cmd2.Parameters.AddWithValue("@Email", email);
        cmd2.Parameters.AddWithValue("@Mobile", mobile);
        cmd2.Parameters.AddWithValue("@Address", address);

        cmd2.ExecuteNonQuery();

        con.Close();

        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert('Request Added Successfully...!!!');window.location='Home.aspx';", true);

    }
}