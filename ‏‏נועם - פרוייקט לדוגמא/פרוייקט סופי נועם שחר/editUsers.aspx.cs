using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class editingUsers : System.Web.UI.Page
{
    public string st;
    public string st1;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string fn = Request.Form["Fn"];
            string ln = Request.Form["ln"];
            string pass = Request.Form["pass"];
            string gender = Request.Form["gender"];
            string snif = Request.Form["snif"];
            string tafkid = Request.Form["tafkid"];

            string sql1 = "update tUsers set " +
                " fn = '" + fn + "'," +
                " ln = '" + ln + "'," +
                " pass = '" + pass + "'," +
                " gender = '" + gender + "'," +
                " snif = '" + snif + "'," +
                " tafkid = '" + tafkid + "'" +
                "where email='" + Session["email"] + "'";
            MyDbase.ChangeTable(sql1, "myData.mdb");
            Session["name"] = fn;
            Session["ln"] = ln;
            Session["tafkid"] =tafkid;
            Session["snif"] = snif;
            st1 = "פרטי המשתמש עודכנו";
        }
    }
}


