using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class uploadHavaia : System.Web.UI.Page
{
    public string st;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string fn = Request.Form["Fn"];
            string ln = Request.Form["ln"];
            string snif = Request.Form["snif"];
            string tafkid = Request.Form["tafkid"];
            string freeText = Request.Form["freeText"];
            string email = (string)Session["email"];
            string sql = "insert into tHavaia values(" + "'" + fn + "'" + "," + "'" + ln + "'" + "," + "'" + snif + "'" + "," + "'" + tafkid + "'" + "," + "'" + freeText + "'" + "," + "'" + email + "'" + " )";
            //Response.Write(sql);
            MyDbase.ChangeTable(sql, "myData.mdb");
            st = "העלאת חוויה";
        }
    }
}