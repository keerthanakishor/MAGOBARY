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
    public partial class AdminView : System.Web.UI.Page
    {


        protected void gvview_SelectedIndexChanged(object sender, EventArgs e)
        {
        }
        ViewClass sObj = new ViewClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            LoadData();
        }

        private void LoadData()
        {
            DataTable dtReg = new DataTable();
           dtReg = sObj.ExecuteSelectQueries();
            if (dtReg.Rows.Count > 0)
            {
                gvview.DataSource = dtReg;
                gvview.DataBind();
            }
        }
    }
    }
