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
    public partial class adminpublishermanagment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridViewAPM.DataBind();
        }


        //add publisher
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkPublisherExist())
            {
                Response.Write("<script>alert('This publisher already exsisting....');</script>");
            }
            else
            {
                addNewPublisher();
            }
        }

        //update publisher
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkPublisherExist())
            {
                updateMember();
            }
            else
            {
                Response.Write("<script>alert('This publisher already exsisting....');</script>");
            }
        }


        //delete publisher
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (checkPublisherExist())
            {
                deleteMember();
            }
            else
            {
                Response.Write("<script>alert('This Publisher already exsisting....');</script>");
            }
        }





        //add new author
        void addNewPublisher()
        {
            try
            {
                SqlConnection conn = new SqlConnection("Data Source=DESKTOP-M9R4O4O;Initial Catalog=elibraryDB;Integrated Security=True");
                string qry = @"INSERT INTO[dbo].[publisher_master_tbl]
           ([publisher_id]
           ,[publisher_name])
     VALUES
           (" + txtPublisherId.Text + ",'" + txtPublisherName.Text + "')";

                SqlCommand cmd = new SqlCommand(qry, conn);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert('add new member is successful....');</script>");

                clearrForm();

                GridViewAPM.DataBind();
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
                string qry = @"UPDATE [dbo].[publisher_master_tbl] SET [publisher_name] = '" + txtPublisherName.Text + "' WHERE [publisher_id] = " + txtPublisherId.Text + "";

                SqlCommand cmd = new SqlCommand(qry, conn);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert(' Member update is successful....');</script>");

                clearrForm();

                GridViewAPM.DataBind();
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
                string qry = @"DELETE FROM [dbo].[publisher_master_tbl]
      WHERE [publisher_id] = " + txtPublisherId.Text + "";

                SqlCommand cmd = new SqlCommand(qry, conn);
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Write("<script>alert(' Member delete is successful....');</script>");

                clearrForm();

                GridViewAPM.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }



        //user defined function
        bool checkPublisherExist()
        {
            try
            {
                SqlConnection conn = new SqlConnection("Data Source=DESKTOP-M9R4O4O;Initial Catalog=elibraryDB;Integrated Security=True");
                String qry = "SELECT * FROM [dbo].[publisher_master_tbl] WHERE publisher_id = " + txtPublisherId.Text.Trim() + "";
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
        void clearrForm()
        {
            txtPublisherId.Text = "";
            txtPublisherName.Text = "";
        }

    }
}