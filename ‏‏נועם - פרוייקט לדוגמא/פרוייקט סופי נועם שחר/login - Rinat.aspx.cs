using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    public string st;
    protected void Page_Load(object sender, EventArgs e)
    {
          if (Page.IsPostBack)
           {
               string email = Request.Form["email"];
               string pass = Request.Form["pass"];
               if (email == "noamMenahel@gmail.com" && pass == "menahel1234")
               {
                   Session["nihol"] = "ok";
                   Session["name"] = "נועם מנהלת";
                Session["ln"] = "שחר";
                Session["email"] = email;
                Session["tafkid"] = "מנהל אתר";
                Session["snif"] = "כנפיים של קרמבו";
                Response.Redirect("home.aspx");
               }
               else
               {
                   string sql = "select * from tUsers where email=" + "'" + email + "'" + "and pass=" + "'" + pass + "'";
                   System.Data.DataTable dt = MyDbase.SelectFromTable(sql, "myData.mdb");
                   if (dt.Rows.Count == 0)
                   {
                       st = "אין נתונים";
                   }

                   else
                   {
                       Session["user"] = "ok";
                       Session["name"] = dt.Rows[0]["fn"];
                       Session["ln"] = dt.Rows[0]["ln"];
                       Session["email"] = email;
                       Session["tafkid"] = dt.Rows[0]["tafkid"];
                       Session["snif"] = dt.Rows[0]["snif"];
                    Response.Redirect("home.aspx");
                   }
               }
          }
    }
}