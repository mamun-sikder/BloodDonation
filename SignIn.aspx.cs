﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class SignIn : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\project\BloodDonation.com\App_Data\bloodDatabase.mdf;Integrated Security=True");

    public object Label1 { get; private set; }

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Session["Email"] = TextBox1.Text;
            string uid = TextBox1.Text;
            string pass = TextBox2.Text;
            con.Open();
            string qry = "select * from Registration where Email = ' " + uid + " ' and password = ' " + pass + " ' ";
            SqlCommand cmd = new SqlCommand(qry, con);
            SqlDataReader sdr = cmd.ExecuteReader();

          
                if(uid == "admin@gmail.com")
                {
                    Response.Redirect("Admin.aspx");
                }
                else
                {
                    Response.Redirect("Home.aspx");
                }

            con.Close();
        }

        catch(Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}