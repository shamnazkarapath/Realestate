using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.IO;

namespace Realestate.Admin
{
    public partial class admin : System.Web.UI.Page
    {/*
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["JRassociatedb"].ConnectionString);
        string path, path1, path2;
        protected void Page_Load(object sender, EventArgs e)
        {
           /* path = path.Replace("", "");
            path1 = path1.Replace("", "");
            path2 = path2.Replace("", "");
           
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            string sid = ((HiddenField)e.Item.FindControl("HiddenField1")).Value;

            con.Open();
            string quer2 = "delete from Customer_tb where Customer_Id='" + sid + "'";
            SqlCommand cmd2 = new SqlCommand(quer2, con);
            int res = cmd2.ExecuteNonQuery();
            if (res > 0)
            {
                Response.Write("data deleted");
                Response.Redirect("admin.aspx");

            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void Btn_Upload_Click(object sender, EventArgs e)
        {
            con.Open();
            /*  int length = FileUpload1.PostedFile.ContentLength;
              byte[] pic = new byte[length];
              FileUpload1.PostedFile.InputStream.Read(pic, 0, length);
  */
         //  FileUpload1.SaveAs(Server.MapPath("~/Images/" + FileUpload1.FileName));
          /*   path = Server.MapPath("Images/");
            if (FileUpload1.HasFile)
            {
                string ext = Path.GetExtension(FileUpload1.FileName);
                if (ext == ".jpg" || ext == ".png")
                {
                    FileUpload1.SaveAs(path + FileUpload1.FileName);
                    string name = "Images/" + FileUpload1.FileName;
                    string ss = "insert into img_tb(images) values('" + name + "')";
                    SqlCommand cmd = new SqlCommand(ss, con); cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("Image has been Uploaded");
                }
                else
                {
                    Response.Write("Plaese Upload Png Or jpg file only");
                }
            }
            /* string ss = "insert into img_tb(images) values('"+pic+"')";
             SqlCommand cmd = new SqlCommand(ss, con);*/
            //cmd.ExecuteNonQuery();
        /*   con.Close();
        }

        protected void Repeater2_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            string sid = ((HiddenField)e.Item.FindControl("HiddenField3")).Value;

            con.Open();
            string quer2 = "delete from Img_tb where id='" + sid + "'";
            SqlCommand cmd2 = new SqlCommand(quer2, con);
            int res = cmd2.ExecuteNonQuery();
            if (res > 0)
            {
                Response.Write("data deleted");
                Response.Redirect("admin.aspx");

            }
        }

        protected void Repeater3_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

            string sid = ((HiddenField)e.Item.FindControl("HiddenField4")).Value;

            con.Open();
            string quer2 = "delete from Img_listing where id='" + sid + "'";
            SqlCommand cmd2 = new SqlCommand(quer2, con);
            int res = cmd2.ExecuteNonQuery();
            if (res > 0)
            {
                Response.Write("data deleted");
                Response.Redirect("admin.aspx");

            }
        }

        protected void Repeater4_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            string sid = ((HiddenField)e.Item.FindControl("HiddenField5")).Value;

            con.Open();
            string quer2 = "delete from interiors where id='" + sid + "'";
            SqlCommand cmd2 = new SqlCommand(quer2, con);
            int res = cmd2.ExecuteNonQuery();
            if (res > 0)
            {
                Response.Write("data deleted");
                Response.Redirect("admin.aspx");

            }
        }

        protected void btnintr_Click(object sender, EventArgs e)
        {
            con.Open();
             path = Server.MapPath("interiors/");
            if (FileUpload2.HasFile)
            {
                string ext = Path.GetExtension(FileUpload2.FileName);
                if (ext == ".jpg" || ext == ".png")
                {
                    FileUpload2.SaveAs(path + FileUpload2.FileName);
                    string name = "interiors/" + FileUpload2.FileName;
                    string ss = "insert into interiors(interiors) values('" + name + "')";
                    SqlCommand cmd = new SqlCommand(ss, con); cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("interiors has been Uploaded");
                }
                else
                {
                    Response.Write("Plaese Upload Png Or jpg file only");
                }
            }con.Close();
                
        }

        protected void btn_lst_Click(object sender, EventArgs e)
        {
            con.Open();
             path = Server.MapPath("listing/");
            if (FileUpload3.HasFile)
            {
                string ext = Path.GetExtension(FileUpload3.FileName);
                if (ext == ".jpg" || ext == ".png")
                {
                    FileUpload3.SaveAs(path + FileUpload3.FileName);
                    string name = "listing/" + FileUpload3.FileName;
                    string ss = "insert into img_listing(listing) values('" + name + "')";
                    SqlCommand cmd = new SqlCommand(ss, con); cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("New listing has been Uploaded");
                }
                else
                {
                    Response.Write("Plaese Upload Png Or jpg file only");
                }
            }
            con.Close();
        }*/
    }
}