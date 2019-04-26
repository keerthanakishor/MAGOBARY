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
    public partial class sendrequest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindRequest();
            }
        }
        protected void btnsearch_Click(object sender, EventArgs e)
        {
            BindRequest();
            gv_request.Visible = true;

        }



        protected void gv_request_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "send request")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = gv_request.Rows[rowIndex];
                Session["Userid"] = row.Cells[0].Text;
                lblmsg4.Text = "Send Request";

            }
        }

        private void BindRequest()
        {
            DataTable dtReg = new DataTable();
            MagobaryClass objrsq = new MagobaryClass();
            objrsq.Rno = txtrollno.Text;
            objrsq.Fanme = txtfirstname.Text;
            objrsq.Mname = txtmiddlename.Text;
            objrsq.Lname = txtlastname.Text;
            objrsq.Course = txtmescourse.Text;
            objrsq.Email = txtmessageemail.Text;

            dtReg = objrsq.SendRequest();
            if (dtReg.Rows.Count > 0)
            {
                gv_request.DataSource = dtReg;
                gv_request.DataBind();
                //lblmesg.Text = "Send Request";

            }

        }

    }
}

