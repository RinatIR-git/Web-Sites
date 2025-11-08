<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="tafkidim.aspx.cs" Inherits="tafkidim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
         <script language="javascript">
    function topFunction() {
    document.body.scrollTop = 0; 
    document.documentElement.scrollTop = 0; 
    }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <center>    
       <font style="font-family:AhlaB; font-size:60px; color:cornflowerblue">
  התפקידים בתנועה
       </font>
       <br />
    <br />
        <img src="תמונות/תפקידים1.png"  title="עץ התפקידים של קרמבו" style="height:500px;width:80%"/>
</center>
    <br />
  <font  text-align="rtl" style="font-size:25px; font-family:AhlaB; color:saddlebrown">
בכל סניף קיים צוות מוביל אשר אחראי על פעילות הסניף בכל התחומים. הצוות המוביל מורכב משבעה בעלי תפקידים:   <br />
      רכז בוגר -
  </font>
      <font  text-align="rtl" style="font-size:25px; font-family:Ahla; color:saddlebrown">
 אחראי על הסניף. אחראי על הקשר עם הרשויות המקומיות ועם גופים נוספים. בנוסף הוא אחראי על הקשר עם הנהלת התנועה המחוזית והארצית. הרכז הבוגר, מנהל את הסניף יחד עם מרכז הסניף.   <br />
<font  text-align="rtl" style="font-size:25px; font-family:AhlaB; color:saddlebrown">
מרכז סניף - </font>
 עומד בראש הצוות המוביל ואחראי לתקינותו ותפקודו של הסניף. מנהל יחד עם הרכז הבוגר את הסניף. בנוסף אחראי מרכז הסניף על ניהול ישיבות הצוות.   <br />
<font  text-align="rtl" style="font-size:25px; font-family:AhlaB; color:saddlebrown">רכז מפעלים - </font>
 אחראי על החלק הלוגיסטי בסניף: אירועים מיוחדים, הסעות החניכים, ביטחון הפעילים והציוד הנדרש לפעולות.   <br />
<font  text-align="rtl" style="font-size:25px; font-family:AhlaB; color:saddlebrown"> רכז חונכים -</font>
 דואג לניהול וליווי החונכים בסניף ומרכז את תחום הדרכת החונכים.   <br />
<font  text-align="rtl" style="font-size:25px; font-family:AhlaB; color:saddlebrown">רכז הדרכת חניכים -  </font>
אחראי על צוות מדריכי החניכים ועל בניית הפעילות השבועית למענם, בחלוקה לכל קבוצה לפי רמת התפקוד של החניך.   <br />
<font  text-align="rtl" style="font-size:25px; font-family:AhlaB; color:saddlebrown">רכז חו"מ (חניכים ומשפחות) -</font>
 אחראי על הקשר עם הורי החניכים והחניכים עצמם. נמצא בקשר רציף עם המשפחות ומודע לכל המוגבלויות ולכל הצרכים של החניכים.   <br />
<font  text-align="rtl" style="font-size:25px; font-family:AhlaB; color:saddlebrown">רכז ח"צ - </font>
 אחראי על מסלול החונכים הצעירים. בניית הפעילות, ליווי החונכים הצעירים וצוות המדריכים שלהם.   <br />
<font  text-align="rtl" style="font-size:25px; font-family:AhlaB; color:saddlebrown">מדריכי חניכים-</font>
 מעברים את הפעולות לקבוצות של חניכים ע"פ רמת תפקודם. (חלק מהצוות המוביל)   <br />
<font  text-align="rtl" style="font-size:25px; font-family:AhlaB; color:saddlebrown">מדריכי חניכים- </font>
 מעבירים את הפעולות לחונכים, לפי קבוצות גיל. (חלק מהצוות המוביל)   <br />
<font  text-align="rtl" style="font-size:25px; font-family:AhlaB; color:saddlebrown">מדריכי ח"צ-</font>
 מעבירים את הפעולות לחונכים הצעירים, ומכנים אותם לחנוך בשנה הבאה. (חלק מהצוות המוביל)   <br />
<font  text-align="rtl" style="font-size:25px; font-family:AhlaB; color:saddlebrown">חונכים-</font>
 לכל חניך יש 2 חונכים אשר עוברים יחד איתו את הפעולה.   <br />
<font  text-align="rtl" style="font-size:25px; font-family:AhlaB; color:saddlebrown">חונכי על-</font>
 עוזרים לכל החונכים בסניף, מחליפים חונכים כשצריך.   <br />
</font>
                                       <br /> 
    <center>
            <button onclick="topFunction()" id="myBtn" title="חזרה לתחילת העמוד">חזרה לתחילת העמוד</button>
    </center>
        <br />

    <table style="height:200px;width:99%">
        <tr>
            <td style="height:200px;width:25%">
                <img src="תמונות/כנפיים11.jpg" style="height:200px;width:100%" />
            </td>
            <td style="height:200px;width:25%">
                <img src="תמונות/עמוס%20תמם%20וחניכי%20התנועה%20מצדיעים%20קרמבו%20בשוק.jpg" style="height:200px;width:100%" />
            </td>
            <td style="height:200px;width:25%">
                <img src="תמונות/כנפיים10.jpg" style="height:200px;width:100%" />
            </td>
            <td style="height:200px;width:25%">
                <img src="תמונות/כנפיים7.jpg" style="height:200px;width:100%" />
                </td>
        </tr>
    </table>
</asp:Content>

