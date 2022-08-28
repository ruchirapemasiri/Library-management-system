using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace eLaibrySystem
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*try
            {

               if (Session["role"].Equals(""))
                {
                    lbUserLogin.Visible = true;
                    lbSignUp.Visible = true;

                    lbLogout.Visible = false;
                    lbHelloUser.Visible = false;

                    lbAdminLogin.Visible = true;
                    lbAuthorMan.Visible = false;
                    lbPublisherMan.Visible = false;
                    lbBookInventory.Visible = false;
                    lbBookIssing.Visible = false;
                    lbMemberMan.Visible = false;
                }
                else if(Session["role"].Equals("user"))
                {
                    lbUserLogin.Visible = false;
                    lbSignUp.Visible = false;

                    lbLogout.Visible = true;
                    lbHelloUser.Visible = true;
                    lbHelloUser.Text = "Hello "+ Session["username"].ToString();


                    lbAdminLogin.Visible = true;
                    lbAuthorMan.Visible = false;
                    lbPublisherMan.Visible = false;
                    lbBookInventory.Visible = false;
                    lbBookIssing.Visible = false;

                }
                else if (Session["role"].Equals("admin"))
                {
                    lbUserLogin.Visible = false;
                    lbSignUp.Visible = false;

                    lbLogout.Visible = true;
                    lbHelloUser.Visible = true;
                    lbHelloUser.Text = "Hello admin";


                    lbAdminLogin.Visible = false;
                    lbAuthorMan.Visible = true;
                    lbPublisherMan.Visible = true;
                    lbBookInventory.Visible = true;
                    lbBookIssing.Visible = true;

                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('"+ex.Message+"');</script>");
            }*/
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminauthormanagment.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminpublishermanagment.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("bookinventory.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("bookisu.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("memberman.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewbook.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup.aspx");
        }

        protected void lbLogout_Click(object sender, EventArgs e)
        {
           /* Session["role"] = " ";
            Session["username"] = " ";
            Session["password"] = " ";
          
            //Session["status"] = "root";
         

            lbUserLogin.Visible = true;
            lbSignUp.Visible = true;

            lbLogout.Visible = false;
            lbHelloUser.Visible = false;

            lbAdminLogin.Visible = true;
            lbAuthorMan.Visible = false;
            lbPublisherMan.Visible = false;
            lbBookInventory.Visible = false;
            lbBookIssing.Visible = false;
            lbMemberMan.Visible = false;*/
        }
    }
}