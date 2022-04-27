using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace Realestate
{
    public partial class LogIn : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["Realestate_db"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Username = Txt_UserName.Text, Password1 = Txt_Password.Text;
            con.Open();
            string quer = "select * from Login_tb where UserName='" + Username + "' and Password='" + Password1 + "'";
            SqlCommand cmd1 = new SqlCommand(quer, con);
            SqlDataReader sdr = cmd1.ExecuteReader();
            if (sdr.Read())
            {
                if (sdr[1].ToString() == "admin")
                {

                    Response.Redirect("Admin.aspx");
                }
            }
            else
            {
                Response.Write("Username or Password is incorrect");
            }
            con.Close();
        }
    }
}