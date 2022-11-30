using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationMasters.Student
{
    public partial class Registeration : System.Web.UI.Page
    {
        DatabaseClass db = new DatabaseClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlDataReader dr = db.dataReader("select * from course_table");
                while (dr.Read())
                {
                    //CoursesCheckBoxList.DataSource = dt;
                    //CoursesCheckBoxList.DataBind();
                    ListItem list = new ListItem();
                    list.Text = dr["courseName"].ToString();
                    list.Value = dr["courseId"].ToString();

                    CoursesCheckBoxList.Items.Add(list);
                }
                for (int i = 1; i <= 31; i++)
                {
                    ddDate.Items.Add(i.ToString());
                }
                for (int i = 1; i <= 12; i++)
                {
                    ddMonth.Items.Add(i.ToString());
                }
                for (int i = 1960; i <= DateTime.Now.Year; i++)
                {
                    ddYear.Items.Add(i.ToString());
                }

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string courses = "";
            foreach (ListItem item in CoursesCheckBoxList.Items)
            {
                if (item.Selected)
                {

                    courses += item.Text + ",";
                }
            }



            string dob = ddDate.SelectedValue + "/" + ddMonth.SelectedValue + "/" + ddYear.SelectedValue;
            object obj = db.Scalarmethod("insert into login_table values('" + UserTextBox1.Text + "','" + PasswordText.Text + "','student','not confirmed');select @@IDENTITY");
            db.Dbclose();
            if(obj != null)
            {
                int i = db.executenonquery("insert into registration_Table values(" + obj + ",'" + NameText.Text + "','" + EmailText.Text + "','" + PhoneText.Text + "','" + RadioButtonList1.SelectedItem.Text + "','" + courses + "','" + dob + "','" + DistrictDropDownList.SelectedItem.Text + "','" + UserTextBox1.Text + "','" + PasswordText.Text + "')");
                db.Dbclose();
                if (i == 1)
                {
                    string msg = "Successfully Registered";
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + msg + "');", true);
                    //Response.Redirect("../LoginPage.aspx");
                }
                else
                {
                    string msg = "Something went wrong";
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('" + msg + "');", true);

                }

            }
                
            
        }
    }
}