using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebApplication1.Models
{
    public class Returnclass
    {


        private string connstring = ConfigurationManager.ConnectionStrings["test"].ConnectionString;

        public string scalarReturn(string q)
        {
            string s = " ";
            try
            {
                SqlConnection conn = new SqlConnection(connstring);
                conn.Open();
                SqlCommand cmd = new SqlCommand(q, conn);
                s = cmd.ExecuteScalar().ToString();
         
            
            }
            catch (Exception)
            {
                s = "null";   
             
            }
            return s;

        }// method end..................

    }
}