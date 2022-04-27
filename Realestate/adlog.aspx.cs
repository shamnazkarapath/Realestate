using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

namespace Realestate
{
    public partial class adlog : System.Web.UI.Page
    {
        /*
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["JRassociatedb"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string LEmail_Id = Txt_UserName.Text, LPassword = Txt_Password.Text; ;
            Session["Name"] = Txt_Password.Text;
            con.Open();
            string query = "select * from Login_tb where User_Name='" + LEmail_Id + "' and Password='" + LPassword + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                Response.Redirect("admin.aspx");
                // Response.Redirect(this.ResolveClientUrl("~/Admin/Admin_ListMember.aspx"));
                // Response.Redirect(this.ResolveClientUrl("~/Admin/chat.aspx"));
                /* if (sdr[2].ToString() == ("admin"))
                 {
                     //Response.Redirect(this.ResolveClientUrl("~/Admin/Admin_AddMember.aspx"));

                     // Response.Redirect("~/chatbox.aspx");
                 }
                 else
                 {
                     Response.Redirect("~/chatbox.aspx");
                 }



             }
            }
            else
            {
                Response.Write("EmailId Or Password is incorrect");
            }
            con.Close();
        }*/

    }
}
