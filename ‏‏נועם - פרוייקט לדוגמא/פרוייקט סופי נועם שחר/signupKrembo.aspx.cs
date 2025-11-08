using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class signupKrembo : System.Web.UI.Page
{
    public string st;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string fn = Request.Form["Fn"];
            string ln = Request.Form["ln"];
            string tz = Request.Form["tz"];
            string phone = Request.Form["phone"];
            string age = Request.Form["age"];
            string gender = Request.Form["gender"];
            string snif = Request.Form["snif"];
            string tafkid = Request.Form["tafkid"];
            string moral = Request.Form["moral"];
            string size = Request.Form["size"];
            string freeText = Request.Form["freeText"];

            string sql1 = "select * from tReshomim where tz=" + "'" + tz + "'";
            System.Data.DataTable dt = MyDbase.SelectFromTable(sql1, "myData.mdb");
            if (dt.Rows.Count > 0)
                st = "תעודת הזהות שהוכנסה קיימת במערכת, הכנס תעודת זהות חדשה ";
            else
            {
                string sql = "insert into tReshomim values(" + "'" + fn + "'" + "," + "'" + ln + "'" + "," + "'" + tz + "'" + "," + "'" + age + "'" + "," + "'" + phone + "'" + "," + "'" + gender + "'" + "," + "'" + snif + "'" + "," + "'" + tafkid + "'" + "," + "'" + size + "'" + "," + "'" + moral + "'" + "," + "'" + freeText + "'" + " )";
                //Response.Write(sql);
                MyDbase.ChangeTable(sql, "myData.mdb");
                st = "נרשמת לתנועה";
            }

        }
    }

}