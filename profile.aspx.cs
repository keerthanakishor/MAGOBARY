using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using MAGOBARY.Class;



namespace MAGOBARY.USER
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }

        protected void DetailsView1_PageIndexChanging1(object sender, DetailsViewPageEventArgs e)
        {

        }
        MagobaryClass uobj = new MagobaryClass();

        protected void Page_load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["userid"] == null)
            {
                //  Response.Redirect("~/User/Home.aspx");
            }
            else if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                uobj.Email = Convert.ToString(Session["userid"]);
                dt = uobj.showdata();
                if (dt.Rows.Count > 0)
                {
                    dvuprofile.DataSource = dt;
                    dvuprofile.DataBind();
                }
            }
        }

        protected void dvuprofile_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }
    }
}
       
        

       