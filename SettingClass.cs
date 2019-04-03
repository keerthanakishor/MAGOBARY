using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


namespace MAGOBARY.Class
{
    public class SettingClass
    {
        string ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["myConn"].ConnectionString;
        SqlConnection con;
        public void OpenConection()
        {
            con = new SqlConnection(ConnectionString);
            con.Open();
        }
        public void CloseConnection()
        {
            con.Close();
        }

        public void ExecuteQueries(string Query_)
        {
            // Whenever you want to execute a query, like an insert, update or delete
            //query then simply call this function 
            //using the object of a class and pass your query to the function
            SqlCommand cmd = new SqlCommand(Query_, con);
            cmd.ExecuteNonQuery();
        }
        private string ftname;
        private string mdname;
        private string ltname;
        private String ddob;
        private string gender1;
        private string course1;
        private string batch1;
        private string address;
        private string mob;
        private string bldg;
        private string emaill;
        private string aemail;
        private string photo;
        private string uid;
        public string Ftname
        {
            get
            {
                return ftname;
            }

            set
            {
                ftname = value;
            }
        }

        public string Mdname
        {
            get
            {
                return mdname;
            }

            set
            {
                mdname = value;
            }
        }

        public string Ltname
        {
            get
            {
                return ltname;
            }

            set
            {
                ltname = value;
            }
        }

        public string Ddob
        {
            get
            {
                return ddob;
            }

            set
            {
                ddob = value;
            }
        }

        public string Gender1
        {
            get
            {
                return gender1;
            }

            set
            {
                gender1 = value;
            }
        }

        public string Course1
        {
            get
            {
                return course1;
            }

            set
            {
                course1 = value;
            }
        }

        public string Batch1
        {
            get
            {
                return batch1;
            }

            set
            {
                batch1 = value;
            }
        }

        public string Address
        {
            get
            {
                return address;
            }

            set
            {
                address = value;
            }
        }

        public string Mob
        {
            get
            {
                return mob;
            }

            set
            {
                mob = value;
            }
        }

        public string Bldg
        {
            get
            {
                return bldg;
            }

            set
            {
                bldg = value;
            }
        }

        public string Emaill
        {
            get
            {
                return emaill;
            }

            set
            {
                emaill = value;
            }
        }

        public string Aemail
        {
            get
            {
                return aemail;
            }

            set
            {
                aemail = value;
            }
        }

        public string Photo
        {
            get
            {
                return photo;
            }

            set
            {
                photo = value;
            }
        }

        public string Uid
        {
            get
            {
                return uid;
            }

            set
            {
                uid = value;
            }
        }

        public void InsertStudent()
        {
            OpenConection();
            SqlCommand command = new SqlCommand("Select max(sid) from settings  ", con);
            int sid;
            object cMax = command.ExecuteScalar();
            if (cMax != DBNull.Value)
            {
                sid = (int)cMax;
                sid++;
            }
            else
            {
                sid = 1;
            }
            string qry = "insert into settings values (" + sid + ",@uid,@fname,@mname,@lname,@dob,@gender,@course,@batch,@address,@bldg,@mob,@email,@aemail,@photo); ";
        SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@fname",ftname);
            cmd.Parameters.AddWithValue("@mname",mdname);
            cmd.Parameters.AddWithValue("@lname",ltname);
            cmd.Parameters.AddWithValue("@dob",ddob);
            cmd.Parameters.AddWithValue("@gender",gender1);
            cmd.Parameters.AddWithValue("@course", course1);
            cmd.Parameters.AddWithValue("@batch", batch1);
            cmd.Parameters.AddWithValue("@address", address);
            cmd.Parameters.AddWithValue("@bldg", bldg);
            cmd.Parameters.AddWithValue("@mob", mob);
            cmd.Parameters.AddWithValue("@email", emaill);
            cmd.Parameters.AddWithValue("@aemail", aemail);
            cmd.Parameters.AddWithValue("@photo", photo);
            cmd.Parameters.AddWithValue("@uid", uid);
            cmd.ExecuteNonQuery();
        }
    }
}
