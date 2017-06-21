using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebApplication1.Models
{
    public class insert_seeker
    {

        string cs = ConfigurationManager.ConnectionStrings["test"].ConnectionString;

        
        public string loginmethod(Seeker seek)
        {
            string s = "";
            SqlConnection conn = new SqlConnection(cs);
            try
            {
                SqlCommand cmd = new SqlCommand("insert_login_user", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@login_email", SqlDbType.NVarChar, 20).Value = seek.email;
                cmd.Parameters.Add("@login_password", SqlDbType.NVarChar, 20).Value = seek.passwrod;
                cmd.Parameters.Add("@login_name", SqlDbType.NVarChar, 20).Value = seek.name;

                
                SqlParameter paramNewId = new SqlParameter()
                {
                    ParameterName = "@NEWID",
                    Value = -1,
                    Direction = ParameterDirection.Output
                };
                cmd.Parameters.Add(paramNewId);

                conn.Open();
                cmd.ExecuteNonQuery();


                s = cmd.Parameters["@NEWID"].Value.ToString();

            }
            catch (Exception)
            {
                s = "-1";

            }

            finally
            {
                conn.Close();
            }





            return s;
        } //method end...............


    }
}