using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


namespace MAGOBARY.Class
{
    public class userloginClass
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
        private string Email;
        private string password;

        public string Email1
        {
            get
            {
                return Email;
            }

            set
            {
                Email = value;
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
            public DataTable ExecuteSelectQueries()
        {
            OpenConection();
            string qry = " select * from Registration where email=@email and password=@password";
            SqlCommand cmd = new SqlCommand(qry, con);
            cmd.Parameters.AddWithValue("@Email", Email);
            cmd.Parameters.AddWithValue("@password", password);
            cmd.ExecuteNonQuery();
            DataTable dtReg = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dtReg);
            CloseConnection();
            return dtReg;
        }

        }
    }

       
    

   