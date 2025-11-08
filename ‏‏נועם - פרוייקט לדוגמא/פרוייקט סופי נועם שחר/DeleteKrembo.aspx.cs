using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DeletrKrembo : System.Web.UI.Page
{
    public string st = "";
    public string st1 ;
    protected void Page_Load(object sender, EventArgs e)
    {
        string sql = "select * from tReshomim";
        System.Data.DataTable dt = MyDbase.SelectFromTable(sql, "myData.mdb");
        if (dt.Rows.Count == 0) st = "אין נתונים";
        else
        {
            st += "<table border = '1'><tr><td>שם פרטי</td><td>שם משפחה </td><td>תעודת זהות</td><td>גיל</td><td>טלפון</td><td>מגדר</td><td>סניף</td><td>מי אני?</td><td>מידה</td><td>מורל</td><td>הערות</td><td>מחיקה</td>";
            st += "</tr>";
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                st += "<tr>";
                for (int k = 0; k < dt.Columns.Count; k++)
                {
                    st += "<td>" + dt.Rows[i][k] + "</td>";

                }
                st += "<td>" + "<a href=delete1.aspx?tz=" + dt.Rows[i]["tz"] + ">מחק</a>";
                st += "</tr>";
            }
            st += "</table>";
        }
    }
}