using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationMasters
{
    public partial class CoursesPage : System.Web.UI.Page
    {
        DatabaseClass db = new DatabaseClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataSource = db.Execdataset("select * from course_table");
                GridView1.DataBind();   
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            int i = db.executenonquery("insert into course_table values('" + TextName.Text + "')");
            GridView1.DataSource = db.Execdataset("select * from course_table");
            GridView1.DataBind();
            TextName.Text = "";
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
            db.executenonquery("delete from course_table where courseId = '" + id + "'");
            GridView1.DataSource = db.Execdataset("select * from course_table");
            GridView1.DataBind();
        }
    }
}