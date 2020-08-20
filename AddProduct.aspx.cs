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
    public partial class AddProduct : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString; 

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void button1_Click(object sender, EventArgs e)
        {
            //database work.
            try
            {
                SqlConnection conn = new SqlConnection(strcon);
                if(conn.State==System.Data.ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO addproduct_tbl VALUES (@ProductId, @ProductName, @ProductType, @ProductWeight, @ProductHeight, @ProductWidth)", conn);
                cmd.Parameters.AddWithValue("@ProductId", textbox5.Text.Trim());
                cmd.Parameters.AddWithValue("@ProductName", textbox1.Text.Trim());
                cmd.Parameters.AddWithValue("@ProductType", dropdownlist1.SelectedValue);
                cmd.Parameters.AddWithValue("@ProductWeight", textbox2.Text.Trim());
                cmd.Parameters.AddWithValue("@ProductHeight", textbox7.Text.Trim());
                cmd.Parameters.AddWithValue("@ProductWidth", textbox11.Text.Trim());

                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert('Product added successfully')</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert'" + ex.Message + "'</script>");
            }
        }
    }
}