using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eLaibrySystem
{
    public partial class adminlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection("Data Source=DESKTOP-M9R4O4O;Initial Catalog=elibraryDB;Integrated Security=True");
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                String sql = "SELECT * FROM [dbo].[admin_login_tbl] WHERE member_id=" + txtAdminId.Text + " AND password='" + txtAdminPassword.Text + "'";

                SqlCommand cmd = new SqlCommand(sql, conn);

                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.HasRows)
                {
                    while (rd.Read())
                    {
                        Response.Write("<script>alert('" + rd.GetValue(1).ToString() + "');</script>");

                       /* Session["username"] = rd.GetValue(0).ToString();
                        Session["fullname"] = rd.GetValue(2).ToString();
                        Session["role"] = "admin";
                        //Session["status"] = rd.GetValue(10).ToString();*/
                    }
                    Response.Redirect("homepage.aspx");
                }
                else
                {
                    Response.Write("<script>alert('invalied admin...');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
   
}


