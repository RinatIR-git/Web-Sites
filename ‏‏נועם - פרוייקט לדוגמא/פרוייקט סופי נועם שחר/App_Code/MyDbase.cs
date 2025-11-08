using System;
using System.Data;
using System.Data.OleDb;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
/// <summary>
/// Summary description for MyDbase
/// </summary>
public class MyDbase
{
    public MyDbase()
    {
        //
        // TODO: Add constructor logic here
        //

    }
    /// <summary>
    /// MakeConnection:
    /// פעולה שמקבלת שם קובץ מסד ניתונים שהנצא ב
    ///App_Data
    ///הפעולה מתחברת לקובץ ומחזירה אובייקט ההתחברות
    ///OleDbConnection
    /// </summary>
    /// <param name="dbFile">שם קובץ מסד הניתונים</param>
    /// <returns></returns>
    public static OleDbConnection MakeConnection(string dbFile)
    {
        OleDbConnection c = new OleDbConnection();
        c.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0; Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/" + dbFile);
        c.Open();
        return c;
    }

    /// <summary>
    /// SelectFromTable: 
    /// מקבלת כפרמטרים שם קובץ מסד הניתונים ושאלתת  
    ///SQL
    /// בחירה
    ///SELECT
    ///הפעולה מתחברת למסד הניתונים מבצעת את שאלתת הבחירה ומחזירה את התוצאה כאובייקט
    ///DataTable  
    /// </summary>
    /// <param name="strSql">משפט בחירה SQL</param>
    /// <param name="FileName">שם קובץ מסד הניתונים</param>
    /// <returns></returns>

    public static DataTable SelectFromTable(string strSql, string FileName)
    {
        ///1. קישור למסד הניתונים
        OleDbConnection c = MakeConnection(FileName);
        ///2. עצם לביצוע שאלתות על מסד הניתונים
        OleDbCommand comm = new OleDbCommand();
        ///3. קביעת השאלתא והקשר עם מסד הניתונים
        comm.CommandText = strSql;
        comm.Connection = c;
        ///4. עצם לשמירת תוצאת ביצוע שאלתת 
        DataTable dt = new DataTable();
        //5. ביצוע שאלתא
        OleDbDataAdapter da = new OleDbDataAdapter(comm);
        ///6. מילוי תוצאת ביצוע השאלתא
        da.Fill(dt);
        ///7. סגירת הקישור למסד הניתונים
        c.Close();
        ///8. החזרת התוצאה
        return dt;
    }

    /// <summary>
    /// ChangeTable:
    /// מקבלת כפרמטרים שם קובץ מסד הניתונים ושאלתת  
    ///SQL
    ///לשינוי תוכן מסד הניתונים
    ///הוספה: INSERT INTO
    ///עידכון: UPDATE
    ///מחיקה: DELETE
    /// </summary>
    /// <param name="strSql">שאלתת SQL לשינוי תוכן מסד הניתונים</param>
    /// <param name="FileName">שם קובץ מסד הניתונים</param>
    public static void ChangeTable(string strSql, string FileName)
    {
        ///1. קישור למסד הניתונים
        OleDbConnection c = MakeConnection(FileName);
        ///2. עצם לביצוע שאלתות על מסד הניתונים
        OleDbCommand comm = new OleDbCommand();
        ///3. קביעת השאלתא והקשר עם מסד הניתונים
        comm.CommandText = strSql;
        comm.Connection = c;
        ///4. ביצוע שאלתא
        comm.ExecuteNonQuery();
        ///7. סגירת הקישור למסד הניתונים
        c.Close();
    }
}
