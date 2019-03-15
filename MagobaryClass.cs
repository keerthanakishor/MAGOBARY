using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace MAGOBARY.Class
{
    public class MagobaryClass
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


        private string fanme;
        private string mname;
        private string lname;
        private DateTime dob;
        private string gender;
        private string course;
        private string batch;
        private string email;
        private string password;

        public string Fanme
        {
            get
            {
                return fanme;
            }

            set
            {
                fanme = value;
            }
        }

        public string Mname
        {
            get
            {
                return mname;
            }

            set
            {
                mname = value;
            }
        }

        public string Lname
        {
            get
            {
                return lname;
            }

            set
            {
                lname = value;
            }
        }

        public DateTime Dob
        {
            get
            {
                return dob;
            }

            set
            {
                dob = value;
            }
        }

        public string Gender
        {
            get
            {
                return gender;
            }

            set
            {
                gender = value;
            }
        }

        public string Course
        {
            get
            {
                return course;
            }

            set
            {
                course = value;
            }
        }

        public string Batch
        {
            get
            {
                return batch;
            }

            set
            {
                batch = value;
            }
        }

        public string Email
        {
            get
            {
                return email;
            }

            set
            {
                email = value;
            }
        }

        public string Password
        {
            get
            {
                return password;
            }

            set
            {
                password = value;
            }
        }


        public void InsertStudent()
        {
            OpenConection();
            SqlCommand command = new SqlCommand("Select max(rno) from Registration ", con);
            int rno;
            object cMax = command.ExecuteScalar();
            if (cMax != DBNull.Value)
            {
                rno = (int)cMax;
                rno++;
            }
            else
            {
                rno = 1;
            }


            string qry = "insert into Registration values (" + rno + ",@fname,@mname,@lname,@dob,@gender,@course,@batch,@email,@password);";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@fname", fanme);
            cmd.Parameters.AddWithValue("@mname", mname);
            cmd.Parameters.AddWithValue("@lname", lname);
            cmd.Parameters.AddWithValue("@dob", dob);
            cmd.Parameters.AddWithValue("@gender", gender);
            cmd.Parameters.AddWithValue("@course", course);
            cmd.Parameters.AddWithValue("@batch", batch);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@password",password);


            cmd.ExecuteNonQuery();
        }

    }
}