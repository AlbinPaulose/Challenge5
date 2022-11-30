using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplicationMasters.Student
{
    public partial class StudentHomePage : System.Web.UI.Page
    {
        DatabaseClass db = new DatabaseClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int userid = Convert.ToInt32(Session["userid"]);
                DataTable dt = db.Exectdataable("select r.*,l.* from registration_Table r inner join login_table l on r.Id = l.Id where r.Id='"+userid+"'");
                if(dt.Rows.Count > 0)
                {
                    UserNameLabel.Text = dt.Rows[0]["username"].ToString();
                    NameTextBox1.Text = dt.Rows[0]["name"].ToString();
                    EmailTextBox1.Text=dt.Rows[0]["email"].ToString();
                    MobileTextBox1.Text = dt.Rows[0]["phone"].ToString();
                    GenderTextBox1 .Text = dt.Rows[0]["gender"].ToString();
                    CoursesTextBox1.Text = dt.Rows[0]["courses"].ToString() ;
                    DOBTextBox1.Text = dt.Rows[0]["dob"].ToString();
                    DistrictTextBox1.Text = dt.Rows[0]["district"].ToString ();

                }
            }

        }
    }
}