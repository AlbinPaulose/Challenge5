using Microsoft.SqlServer.Server;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplicationMasters.Teachers;

namespace WebApplicationMasters
{
    public partial class LoginPage : System.Web.UI.Page
    {
        DatabaseClass db = new DatabaseClass();
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
         {
            string username = NameTextBox.Text;
            string password = PasswordTextBox.Text;
            if(username == "Admin" && password == "Admin")
            {
                Response.Redirect("Teachers/TeacherHomePage.aspx");
            }
            try
            {
                SqlDataReader dataReader = db.dataReader("select * from login_table where username='" + username + "' and password ='" + password + "' ");
                if (dataReader.Read())
                {
                    //string k = dataReader.GetString(4).ToString();  string l = dataReader[4].ToString();
                    if (dataReader["status"].ToString() == "confirmed")
                    {
                        Session["userid"] = Convert.ToInt32(dataReader[0]);
                        Label1.Text = "Login Success....!!";
                        Response.Redirect("Student/StudentHomePage.aspx");
                    }
                    
                    else if (dataReader["status"].ToString() == "not confirmed")
                    {
                        string msg = "Admin is not yet confirmed! Please Try again after some time...!!!";
                        Label1.ForeColor = Color.Red;
                        Label1.Text = msg;
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + msg + "');", true);

                    }
                    else if(dataReader["status"].ToString() == "blocked")
                    {
                        string msg = "You are blocked by the authority!!!";
                        Label1.ForeColor = Color.Red;
                        Label1.Text = msg;
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + msg + "');", true);
                    }

                }
                else
                {
                    string msg = "Username and password is not correct Try again...!!!";
                    Label1.ForeColor = Color.Red;
                    Label1.Text = msg;
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + msg + "');", true);

                }
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }

}