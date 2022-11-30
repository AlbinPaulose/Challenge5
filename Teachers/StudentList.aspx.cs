using System;
using System.Collections.Generic;
using System.ComponentModel.Design;
using System.Data;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationMasters.Teachers
{
    public partial class StudentList : System.Web.UI.Page
    {
        DatabaseClass db = new DatabaseClass();

        protected void ViewGrid()
        {
            DataTable dt = db.Exectdataable("select r.*,l.* from registration_Table r inner join login_table l on r.Id = l.Id where l.role='student' and l.status!='blocked'");
            GridView1.DataSource = dt;
            GridView1.DataBind();
            foreach (GridViewRow row in GridView1.Rows)
            {

                LinkButton button = row.Cells[11].Controls[0] as LinkButton;

                string userRole = row.Cells[9].Text;
                if (userRole == "not confirmed")
                {
                    button.Visible = true;
                }
                else
                {
                    button.Visible = false;
                }
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                ViewGrid();

            }
        }
        //Giving Confirmation to students
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = GridView1.DataKeys[e.RowIndex].Value.ToString();
            db.executenonquery("update login_table set status='confirmed' where Id='" + id + "'");
            ViewGrid();
            //GridView1.DataSource = db.Execdataset("select r.*,l.* from registration_Table r inner join login_table l on r.Id = l.Id where l.role='student' and l.role!='blocked'");
            //GridView1.DataBind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string id = GridView1.DataKeys[e.RowIndex].Value.ToString();
            TextBox name = (TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0];
            TextBox email = (TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0];
            TextBox phone = (TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0];
            TextBox gender = (TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0];
            TextBox course =   (TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0];
            TextBox dob =  (TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0];
            TextBox district =    (TextBox)GridView1.Rows[e.RowIndex].Cells[7].Controls[0];
            TextBox username = (TextBox)GridView1.Rows[e.RowIndex].Cells[8].Controls[0];
            db.executenonquery("update registration_Table set name='" + name.Text + "',email='" + email.Text + "'," +
                "phone='" + phone.Text + "',gender='" + gender.Text + "',courses='" + course.Text + "',dob='" + dob.Text + "'," +
                "district='" + district.Text + "' where Id='" + id + "'");
            db.executenonquery("update login_table set username='" + username.Text + "' where id='"+id+"'");

            GridView1.EditIndex = -1;
            ViewGrid();
            //GridView1.DataSource = db.Execdataset("select r.*,l.* from registration_Table r inner join login_table l on r.Id = l.Id where l.role='student' and l.role!='blocked'");
            //GridView1.DataBind();

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            ViewGrid();
            // GridView1.DataSource = db.Execdataset("select r.*,l.* from registration_Table r inner join login_table l on r.Id = l.Id where l.role='student' and l.role!='blocked'");
            //GridView1.DataBind();

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            ViewGrid();
            //GridView1.DataSource = db.Execdataset("select r.*,l.* from registration_Table r inner join login_table l on r.Id = l.Id where l.role='student' and l.role!='blocked'");
            //GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Write("kkk");
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        { 
            try
            {

                if (e.CommandName == "Delete")
                {

                    Button button = (Button)e.CommandSource as Button;
                    GridViewRow row = button.NamingContainer as GridViewRow;
                    int index = row.RowIndex;
                    int userId = Convert.ToInt32(GridView1.DataKeys[index].Value.ToString());
                    db.executenonquery("update login_table set status='blocked' where id='" + userId + "'");
                    ViewGrid();


                }

            
            }
            catch (Exception ex)
            {
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Script", "alert('Cannot be Deleted because it is used in other Pages!!!');", true);
            }

            
        }
    }
}