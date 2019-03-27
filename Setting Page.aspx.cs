using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using MAGOBARY.Class;

namespace MAGOBARY.USER
{
    public partial class Setting_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void Button4_Click(object sender, EventArgs e)
        {
            SettingClass objsett = new SettingClass();
            objsett.Ftname = txtftname.Text;
            objsett.Mdname = txtmdname.Text;
            objsett.Ltname = txtltname.Text;
            objsett.Ddob = txtudob.Text;
            objsett.Gender1 = radiomale.Text;
            objsett.Gender1 = radioFemale.Text;
            objsett.Course1 = stream.SelectedItem.Text;
            objsett.Batch1 = txtubatch.Text;
            objsett.Address = txtaddress.Text;
            objsett.Mob = txtmno.Text;
            objsett.Bldg = txtbg.Text;
            objsett.Emaill = txtuemail.Text;
            objsett.Aemail = txtaemail.Text;
            objsett.Uid = Convert.ToString(Session["Userid"]);

            string filename = Path.GetFileName(userphoto.PostedFile.FileName);
            string ext = Path.GetExtension(filename);
            if (ext.ToLower() == ".jpg" || ext.ToLower() == ".bmp" || ext.ToLower() == ".png" || ext.ToLower() == ".jpeg")
            {
                string src = Server.MapPath("~/Photo") + "\\" + txtftname.Text + ".JPG";
                userphoto.PostedFile.SaveAs(src);
                string picpath = "~/Photo/" + txtftname.Text + ".JPG";
                objsett.Photo = picpath;
            }

            objsett.InsertStudent();





        }
    }
}