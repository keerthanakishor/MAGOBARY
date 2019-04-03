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
    public partial class Delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindUsers();  
        }

        
        private void BindUsers()
        {

             DataTable dtReg = new DataTable();
            MagobaryClass objdelete = new MagobaryClass();
         
            dtReg = objdelete.deletedata();

            if (dtReg.Rows.Count > 0)
            {
                gvdelete.DataSource = dtReg;
                gvdelete.DataBind();

            }
        }

        protected void gvdelete_RowCommand(object sender, GridViewCommandEventArgs e)
        {
             

            MagobaryClass delobj = new MagobaryClass();
            if (e.CommandName == "Delete")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = gvdelete.Rows[rowIndex];
                delobj.Rno = Convert.ToInt32(((HiddenField)gvdelete.Rows[rowIndex].FindControl("hdnId")).Value);
                BindUsers();

                delobj.deledata();
            }
        }



       


        protected void gvdelete_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        
            
    }
}