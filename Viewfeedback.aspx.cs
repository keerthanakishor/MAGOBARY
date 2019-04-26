using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using MAGOBARY.Class;



namespace MAGOBARY.ADMIN
{
    public partial class Viewfeedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ViewData();
        }
        MagobaryClass objfdview = new MagobaryClass();

        private void ViewData()
        {
            DataTable dtview = new DataTable();
            dtview= objfdview.Feedbackview();
            if (dtview.Rows.Count > 0)
            {
                gvviewfeedback.DataSource = dtview;
                gvviewfeedback.DataBind();
            }
        }
    }
}