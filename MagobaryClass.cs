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
        private int rno;
        private string msg;

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

        public int Rno
        {
            get
            {
                return rno;
            }

            set
            {
                rno = value;
            }
        }

        public string Msg
        {
            get
            {
                return msg;
            }

            set
            {
                msg = value;
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
            cmd.Parameters.AddWithValue("@password", password);


            cmd.ExecuteNonQuery();
        }
        public DataTable showdata()
        {
            OpenConection();
            string qry2 = "select * from Registration  where rno=@email";
            SqlCommand cmd = new SqlCommand(qry2, con);
            cmd.Parameters.AddWithValue("@email", Email);

            cmd.ExecuteNonQuery();

            DataTable dtReg = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dtReg);
            CloseConnection();
            return dtReg;



        }
        public DataTable deletedata()
        {
            OpenConection();
            string qry2 = "select * from Registration ";
            SqlCommand cmd = new SqlCommand(qry2, con);
            /*    cmd.Parameters.AddWithValue("@fname",'%' + fanme+'%');
                cmd.Parameters.AddWithValue("@mname", '%' + mname + '%');
                cmd.Parameters.AddWithValue("@lname", '%' + lname + '%');
                cmd.Parameters.AddWithValue("@dbo", '%' + dob + '%');


        */
            cmd.ExecuteNonQuery();

            DataTable dtReg = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dtReg);
            CloseConnection();
            return dtReg;




        }
        public DataTable deledata()
        {
            OpenConection();
            string qry3 = "delete from registration where rno=@rno ";
            SqlCommand cmd = new SqlCommand(qry3, con);

                cmd.Parameters.AddWithValue("@rno",rno);
            
            
            cmd.ExecuteNonQuery();

            DataTable dtReg = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dtReg);
            CloseConnection();
            return dtReg;

        }
        public DataTable SendMessage()
        {
            OpenConection();
            string condition = string.Empty;
            condition += (!string.IsNullOrEmpty(fanme) ? " and fname like @fname" : string.Empty);
            condition += (!string.IsNullOrEmpty(mname) ? " and mname like @mname " : string.Empty);
            condition += (!string.IsNullOrEmpty(lname) ? " and lname like @lname" : string.Empty);
            condition += (!string.IsNullOrEmpty(course) ? " and course like @course" : string.Empty);
            condition += (!string.IsNullOrEmpty(email) ? " and email=@email " : string.Empty);


            string qry2 = "Select * from Registration where 1=1 " + condition;
            SqlCommand cmd = new SqlCommand(qry2, con);
            cmd.Parameters.AddWithValue("@fname", '%' + fanme + '%');
            cmd.Parameters.AddWithValue("@mname", '%' + mname + '%');
            cmd.Parameters.AddWithValue("@lname", '%' + lname+ '%');
            cmd.Parameters.AddWithValue("@course", '%' + course+ '%');
            cmd.Parameters.AddWithValue("@email", email);


            cmd.ExecuteNonQuery();

            DataTable dtReg = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dtReg);
            CloseConnection();
            return dtReg;

        }
        public void InsertMessage()
        {
            OpenConection();
            SqlCommand command = new SqlCommand("Select max(msg_id) from message ", con);
            int msg_id;
            object cMax = command.ExecuteScalar();
            if (cMax != DBNull.Value)
            {
                msg_id = (int)cMax;
                msg_id++;
            }
            else
            {
                msg_id = 1;
            }


            string qry = "insert into message values (" + msg_id + ",@rno,GETDATE(),@message);";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@rno",rno);
            cmd.Parameters.AddWithValue("@message",msg);
          


            cmd.ExecuteNonQuery();
        }

        public DataTable MessageData()
        {
            OpenConection();
            string qry4 = "select * from message ";
            SqlCommand cmd = new SqlCommand(qry4, con);
           
            cmd.ExecuteNonQuery();

            DataTable dtmessage = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dtmessage);
            CloseConnection();
            return dtmessage;
        }
    }
}
