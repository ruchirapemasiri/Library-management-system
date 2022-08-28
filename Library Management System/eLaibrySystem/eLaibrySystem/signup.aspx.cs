using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eLaibrySystem
{
   
    public partial class signup : System.Web.UI.Page
    {

        //string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
       // SqlConnection conn = new SqlConnection("Data Source=DESKTOP-M9R4O4O;Initial Catalog=elibraryDB;Integrated Security=True");
      
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //signup button click event
        protected void Button3_Click(object sender, EventArgs e)
        {
            if(checkMemberExist())
            {
                Response.Write("<script>alert('member alrady exist...');</script>");
            }
            else
            {
                signupview();
            }
           
        }

        bool checkMemberExist()
        {

            try
            {
                SqlConnection conn = new SqlConnection("Data Source=DESKTOP-M9R4O4O;Initial Catalog=elibraryDB;Integrated Security=True");
                String qry = "SELECT * FROM [dbo].[member_master_tbl] WHERE member_id = " + txtUserId.Text.Trim() + "";
                SqlCommand cmd = new SqlCommand(qry,conn);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                //conn.Close();
                if (dt.Rows.Count >= 1)
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
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        void signupview()
        {
            try
            {
                SqlConnection conn = new SqlConnection("Data Source=DESKTOP-M9R4O4O;Initial Catalog=elibraryDB;Integrated Security=True");
                string qry = @"INSERT INTO [dbo].[member_master_tbl]
           ([full_name]
           ,[dob]
           ,[contc_no]
           ,[email]
           ,[state]
           ,[city]
           ,[pin_code]
           ,[full_address]
           ,[member_id]
           ,[password])
     VALUES
           ('"+txtFullname.Text+"','"+txtDob.Text+"',"+txtCNO.Text+",'"+txtEmail.Text+"','"+dplState.SelectedValue+"','"+txtCity.Text+"','"+txtPinCode.Text+"','"+txtAddress.Text+"',"+txtUserId.Text+",'"+txtPassword.Text+"')";

                SqlCommand cmd = new SqlCommand(qry,conn);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert('Sign up is successful....');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

    }
}