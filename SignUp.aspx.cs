using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

public partial class SignUp : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\project\BloodDonation.com\App_Data\bloodDatabase.mdf;Integrated Security=True");
    SqlCommand cmd;

    string gender, fileName;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if(rbMale.Checked)
        {
            gender = "Male";
        }
        else if(rbFemale.Checked)
        {
            gender = "Female";
        }

        fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);

        FileUpload1.SaveAs(Server.MapPath("~/Images/" + fileName));

        con.Open();

        cmd = new SqlCommand("insert into Registration values(@Name,@Email,@Mobile,@gender,@age,@bg,@weight,@height,@image,@password,@address)", con);

        cmd.Parameters.AddWithValue("@Name", txtName.Text);
        cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
        cmd.Parameters.AddWithValue("@Mobile", txtMobile.Text);
        cmd.Parameters.AddWithValue("@gender", gender);
        cmd.Parameters.AddWithValue("@age", ddAge.SelectedValue);
        cmd.Parameters.AddWithValue("@bg", ddBg.SelectedValue);
        cmd.Parameters.AddWithValue("@weight", txtWeight.Text);
        cmd.Parameters.AddWithValue("@height", txtHeight.Text);
        cmd.Parameters.AddWithValue("@image", "Images/" + fileName);
        cmd.Parameters.AddWithValue("@password", txtPassword.Text);
        cmd.Parameters.AddWithValue("@address", txtAddress.Text);

        System.Console.WriteLine(txtName.Text + ", " + txtEmail.Text + ",  " + txtMobile.Text + "," + gender + " , " + ddAge.SelectedValue + "," + ddBg.SelectedValue + " ," + txtWeight.Text + ", " + txtHeight.Text + "," + fileName + ", " + txtPassword.Text + ", " + txtAddress.Text);

        cmd.ExecuteNonQuery();
        con.Close();

        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert('Update Successfully...!!!');window.location='SignIn.aspx';", true);
    }
}