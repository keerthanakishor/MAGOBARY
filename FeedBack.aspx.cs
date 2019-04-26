using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MAGOBARY.Class;

namespace MAGOBARY.USER
{
    public partial class FeedBack : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsd_Click(object sender, EventArgs e)
        {
            MagobaryClass objfd = new MagobaryClass();
            objfd.Fdb = txtmessg.Text;
            objfd.Rno = Convert.ToString(Session["Userid"]);
            objfd.InsertFeedback();
            lbmsg3.Text = "Send Feed Back";
        }

        protected void btncan_Click(object sender, EventArgs e)
        {
            txtmessg.Text = "";
        }
    }
    }
