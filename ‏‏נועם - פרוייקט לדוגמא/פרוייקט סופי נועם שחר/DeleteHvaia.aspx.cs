using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DeleteHvaia : System.Web.UI.Page
{
    public string st = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        string sql = "select * from tHavaia";
        System.Data.DataTable dt = MyDbase.SelectFromTable(sql, "myData.mdb");
        if (dt.Rows.Count == 0) st = "אין נתונים";
        else
        {
            st += "<table border = '1'><tr><td>שם פרטי</td><td>שם משפחה </td><td>סניף</td><td>תפקיד</td><td>חוויה</td><td>מחק</td>";
            st += "</tr>";
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                st += "<tr>";
                for (int k = 0; k < dt.Columns.Count-1; k++)
                {
                    st += "<td>" + dt.Rows[i][k] + "</td>";

                }
                string freetext = dt.Rows[i]["freeText"].ToString();
                freetext = System.Web.HttpUtility.UrlEncode(freetext);



                st += "<td>" + "<a href=delete2.aspx?email=" + dt.Rows[i]["email"] + "&freeText="+ freetext + "> מחק</a>";
                st += "</tr>";
            }
            st += "</table>";
        }
    }
}



             