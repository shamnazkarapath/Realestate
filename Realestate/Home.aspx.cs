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
    public partial class Home : System.Web.UI.Page
    {/*
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["JRassociatedb"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }
        */
        protected void Btn_Send_Click(object sender, EventArgs e)
        {/*

            try
            {
                string Name, EmailId, MobileNo, Message;
                Name = Txt_Name.Text;
                EmailId = Txt_Email.Text;
                MobileNo = Txt_Phone.Text;
                //UserName = Txt_UserName.Text;
                //Password = Txt_Password.Text;
                Message = Txt_Message.Text;
                con.Open();

                string query = "insert into Customer_tb(Name,Email,Phone,Message)values('" + Name + "','" + EmailId + "','" + MobileNo + "','" + Message + "')";
                SqlCommand cmd = new SqlCommand(query, con);
                int res = cmd.ExecuteNonQuery();
                if (res > 0)
                {

                    Txt_Email.Text = "";
                    Txt_Message.Text = "";
                    Txt_Phone.Text = "";
                    Txt_Name.Text = "";
                    //Txt_Password.Text = "";
                    // Txt_UserName.Text = "";

                }
                else
                { Response.Write("Data is Note Inserted"); }

                con.Close();
            }
            catch (Exception)
            {
                Response.Write("cannot allowd null value");
            }*/
        }


        /*
        protected void Button1_Click(object sender, EventArgs e)
        {



        }*/
    }
}
        
    

   