using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Linq.Expressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TeamMark1
{
    public partial class usersignup : System.Web.UI.Page
    {
        //We made string strcon to take connection string provided in web.config file. We access the connection string with name "con"
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Click(object sender, EventArgs e)
        {
            if(checkcustomerexist())
            {
                Response.Write("<script>('Customer already exist')</script>");
            }
            else
            {
                signup();
            }
        }

        void signup()
        {
            try
            {
                //to stablish sql connection we write below line.
                SqlConnection conn = new SqlConnection(strcon);
                //if the connection conn is closed it will get opened.
                if (conn.State == System.Data.ConnectionState.Closed)
                {
                    conn.Open();
                }
                //here starts our database work
                //cmd object will take whole sql query. We do need to use object if we are using sql query in programming language.
                SqlCommand cmd = new SqlCommand("INSERT INTO usersignup_tbl VALUES (@fullname, @dob, @contact, @email, @userid, @password)", conn);
                cmd.Parameters.AddWithValue("@fullname", textbox1.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", textbox2.Text.Trim());
                cmd.Parameters.AddWithValue("@contact", textbox3.Text.Trim());
                cmd.Parameters.AddWithValue("@email", textbox4.Text.Trim());
                cmd.Parameters.AddWithValue("@userid", textbox8.Text.Trim());
                cmd.Parameters.AddWithValue("@password", textbox9.Text.Trim());

                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert('You are Signed up successfully')</script>");
            }
            catch (Exception ex)
            {
                //error will be shown here
                Response.Write("<script>alert'" + ex.Message + "'</script>");
            }
        }

        bool checkcustomerexist()
        {
            try
            {
                //to stablish sql connection we write below line.
                SqlConnection conn = new SqlConnection(strcon);
                //if the connection conn is closed it will get opened.
                if (conn.State == System.Data.ConnectionState.Closed)
                {
                    conn.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM usersignup_tbl WHERE userid='"+textbox8.Text.Trim()+"';", conn);
                //SqlDataAdapter is used to get data from "cmd"
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                // datatable is a database table which has all the data in dt object
                DataTable dt = new DataTable();
                //if userid entered by user (da) == userid in database table (dt), means userid is already present in table.
                //dt.rows.count will count the the matched userid. 
                da.Fill(dt);
                if(dt.Rows.Count>=1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                //error will be shown here
                Response.Write("<script>alert'" + ex.Message + "'</script>");
                return false;
            }
        }
    }
}