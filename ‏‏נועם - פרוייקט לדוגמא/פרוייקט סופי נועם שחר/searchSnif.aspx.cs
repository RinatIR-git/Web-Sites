using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class searchSnif : System.Web.UI.Page
{
    public string st = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            string city = Request.Form["city"];
            string sql = "select * from tSnifim where city like " + "'%" + city + "%'" ;
            System.Data.DataTable dt = MyDbase.SelectFromTable(sql, "myData.mdb");
            if (dt.Rows.Count == 0) st = "לא קיימים סניפים בעיר שהוכנסה";
            else
            {
                st += "<table border = '1'><tr><td>מחוז</td><td>עיר </td><td>יום פעילות</td><td>שעת פעילות משותפת</td><td>שעת פעילות חונכים</td><td>כתובת</td><td>רכז הסניף</td>";
                st += "</tr>";
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    st += "<tr>";
                    for (int k = 0; k < dt.Columns.Count; k++)
                    {
                        st += "<td>" + dt.Rows[i][k] + "</td>";

                    }
                    st += "</tr>";
                }
                st += "</table>";
            }
        }
    }
    }