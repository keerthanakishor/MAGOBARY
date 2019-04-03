using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace MAGOBARY.Class
{
    public class ViewClass
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
        public DataTable ExecuteSelectQueries()
        {
            OpenConection();
            DataTable dtReg = new DataTable();
            string a = "Pending";
            SqlCommand command = new SqlCommand("Select * from Registration", con);

            SqlDataAdapter da = new SqlDataAdapter(command);// this will query your database and return the result to your datatable
            da.Fill(dtReg);
            CloseConnection();
            return dtReg;
        }
    }

}