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
    public partial class Message : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                BindMessage();
            }
        }

      

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            BindMessage();
        }
        protected void gv_tpc_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Message")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = gv_tpc.Rows[rowIndex];
                Session["Userid"] = row.Cells[0].Text;
                txtmsg.Visible = true;
            }
        }
                   private void BindMessage()
        {
            DataTable dtReg = new DataTable();
            MagobaryClass objmsg = new MagobaryClass();
            objmsg.Fanme = txtfirstname.Text;
            objmsg.Mname = txtmiddlename.Text;
            objmsg.Lname = txtlastname.Text;
            objmsg.Course = txtmescourse.Text;
            objmsg.Email = txtmessageemail.Text;
            dtReg = objmsg.SendMessage();
            if(dtReg.Rows.Count>0)
            {
                gv_tpc.DataSource = dtReg;
                gv_tpc.DataBind();

            }
        }

        protected void btnsend_Click(object sender, EventArgs e)
        {
            MagobaryClass objsend = new MagobaryClass();
            objsend.Msg= txtmsg.Text;
            objsend.Rno = Convert.ToInt32(Session["Userid"]);
            objsend.InsertMessage();
            lblmesg.Text = "Send Message";
            objsend.Msg= "";
        }

       
    }
    }


