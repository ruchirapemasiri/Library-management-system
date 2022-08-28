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
    public partial class adminauthormanagment : System.Web.UI.Page
    {

        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-M9R4O4O;Initial Catalog=elibraryDB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            GridViewAAM.DataBind();
        }

        //Add button
        protected void Button1_Click(object sender, EventArgs e)
        {
           if(checkAuthorExist())
            {
                Response.Write("<script>alert('This authoe already exsisting....');</script>");
            }
           else
            {
                addNewAuthor();
            }
        }

        //update button
        protected void Button2_Click(object sender, EventArgs e)
        {
                updateMember();
        }


        //delete button
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (checkAuthorExist())
            {
                deleteMember();
            }
            else
            {
                Response.Write("<script>alert('No member to delete....');</script>");
            }
        }

       //Go button
        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        //add new author
        void addNewAuthor()
        {
            try
            {
                SqlConnection conn = new SqlConnection("Data Source=DESKTOP-M9R4O4O;Initial Catalog=elibraryDB;Integrated Security=True");
                string qry = @"INSERT INTO[dbo].[author_master_tbl]
           ([author_id]
           ,[author_name])
     VALUES
           ("+txtAuthorId.Text+",'"+txtAuthorName.Text+"')";

                SqlCommand cmd = new SqlCommand(qry, conn);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert('add new member is successful....');</script>");

                clearForm();

                GridViewAAM.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        //update member
        void updateMember()
        {
            try
            {
                SqlConnection conn = new SqlConnection("Data Source=DESKTOP-M9R4O4O;Initial Catalog=elibraryDB;Integrated Security=True");
                string qry = @"UPDATE [dbo].[author_master_tbl] SET [author_name] = '" + txtAuthorName.Text + "' WHERE [author_id] = " + txtAuthorId.Text + "";

                SqlCommand cmd = new SqlCommand(qry, conn);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert(' Member update is successful....');</script>");

                clearForm();

                GridViewAAM.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


        //dalate member
        void deleteMember()
        {
            try
            {
                SqlConnection conn = new SqlConnection("Data Source=DESKTOP-M9R4O4O;Initial Catalog=elibraryDB;Integrated Security=True");
                string qry = @"DELETE FROM [dbo].[author_master_tbl]
      WHERE [author_id] = " + txtAuthorId.Text + "";

                SqlCommand cmd = new SqlCommand(qry, conn);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert(' Member delete is successful....');</script>");

                clearForm();

                GridViewAAM.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }



        //user defined function
        bool checkAuthorExist()
        {
            try
            {
                SqlConnection conn = new SqlConnection("Data Source=DESKTOP-M9R4O4O;Initial Catalog=elibraryDB;Integrated Security=True");
                String qry = "SELECT * FROM [dbo].[author_master_tbl] WHERE author_id = " + txtAuthorId.Text.Trim() + "";
                SqlCommand cmd = new SqlCommand(qry, conn);

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

        //clear function
        void clearForm()
        {
            txtAuthorId.Text = "";
            txtAuthorName.Text = "";
        }
    }

}