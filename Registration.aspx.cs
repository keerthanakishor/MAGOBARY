using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MAGOBARY.Class;

namespace MAGOBARY.ADMIN
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
            MagobaryClass objReg = new MagobaryClass();
            objReg.Fanme = txtfname.Text;
            objReg.Mname = txtmname.Text;
            objReg.Lname = txtlname.Text;
            objReg.Dob =Convert.ToDateTime( txtdob.Text);
            objReg.Gender = radiomale.Text;
            objReg.Gender = radiofemale.Text;
            objReg.Course = txtcourse.Text;
            objReg.Batch = txtbatch.Text;
            objReg.Email = txtemail.Text;
            objReg.Password = txtpass.Text;
            objReg.InsertStudent();




        }
    }
}