using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class signupWeb : System.Web.UI.Page
{
    public string st;
    protected void Page_Load(object sender, EventArgs e)
    {
            if (Page.IsPostBack)
            {
                string fn = Request.Form["Fn"];
                string ln = Request.Form["ln"];
                string email = Request.Form["email"];
                string pass = Request.Form["pass"];
                string gender = Request.Form["gender"];
                string snif = Request.Form["snif"];
                string tafkid = Request.Form["tafkid"];

                string sql1 = "select * from tUsers where email=" + "'" + email + "'";
                System.Data.DataTable dt = MyDbase.SelectFromTable(sql1, "myData.mdb");
                if (dt.Rows.Count > 0)
                    st="האימייל שהוכנס קיים במערכת- הכנס אימייל חדש ";
                else
                {
                    string sql = "insert into tUsers values(" + "'" + fn + "'" + "," + "'" + ln + "'" + "," + "'" + email + "'" + "," + "'" + pass + "'" + "," + "'" + gender + "'"+ "," + "'" + snif + "'"+ "," + "'" + tafkid + "'" + " )";
                    //Response.Write(sql);
                    MyDbase.ChangeTable(sql, "myData.mdb");
               st="נרשמת לאתר";
                Response.Redirect("login.aspx");
            }

            }
        }
    }
