using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TeamMark1
{
    public partial class userlogin : System.Web.UI.Page
    {
        //To fetch connection string from web.config
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                // to establish connection with database
                SqlConnection conn = new SqlConnection(strcon);
                if (conn.State == System.Data.ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM usersignup_tbl WHERE userid='@userid' AND password='@password'", conn);
                cmd.Parameters.AddWithValue("@userid", TextBox1.Text);
                cmd.Parameters.AddWithValue("@password", TextBox2.Text);
                //this will execute cmd sql command.
                SqlDataReader dr = cmd.ExecuteReader();
                //either get one record or no record from the database.
                // Here we check whether id and password is correct or not.
                if(dr.HasRows)
                {
                    //while data reader is reading data
                    while (dr.Read())
                    {
                        //getvalue will get the value of the column. It takes table's column number as parameter
                        Response.Write("<script>alert('" + dr.GetValue(5).ToString()+ "')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Invalid user')</script>");
                }
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert('Login Successful.')</script>");
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert'" + ex.Message + "'</script>");
            }
        }
    }
}