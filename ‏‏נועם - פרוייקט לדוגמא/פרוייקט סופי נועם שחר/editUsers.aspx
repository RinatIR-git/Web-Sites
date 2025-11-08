<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="editUsers.aspx.cs" Inherits="editingUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
                <script language="javascript">
        function cheackAll()
        {
            fnErr.innerHTML = "";
            lnErr.innerHTML = "";
            passErr.innerHTML = "";
            f = true;
            if (checkFirstName() == false)
                f = false;
            if (checkLastName() == false)
                f = false;
            if (checkPass() == false)
                f = false;
            return f;
        }// סוף פעולה ראשית

        function  checkFirstName()
        {
            name = document.getElementById("fn").value;
            //alert(name);
            if (name.length < 2 || name.length > 30)
            {
                fnErr.innerHTML = "אורך השם הפרטי לא תקין";
                return false;
            }
            count=0;
            for (i = 0; i < name.length; i++)
            {
                x = (name.charAt(i) >= 'a' && name.charAt(i) <= 'z');
                y = (name.charAt(i) >= 'A' && name.charAt(i) <= 'Z');
                z = (name.charAt(i) >= 'א' && name.charAt(i) <= 'ת');
                t = (name.charAt(i) == ' ');
                if (t == true)
                    count++;
                if (x == false && y == false && z == false && t==false)
                {
                    fnErr.innerHTML = "יש להכניס שם תקין עם אותיות בעברית או אנגלית ";
                    return false;
                }

                if (count > 4)
                {
                    fnErr.innerHTML = "יש להכניס שם תקין עם אותיות בעברית או אנגלית ";
                    return false;
                }
            }
            return true;
        } // סוף בדיקת שם

                   
        function checkLastName()
        {
            name = document.getElementById("ln").value;
            //alert(name);

            if (name.length < 2|| name.length>100)
            {
                lnErr.innerHTML = "אורך שם המשפחה לא תקין";
                return false;
            }
            count = 0;
            for (i = 0; i < name.length; i++) {
                x = (name.charAt(i) >= 'a' && name.charAt(i) <= 'z');
                y = (name.charAt(i) >= 'A' && name.charAt(i) <= 'Z');
                z = (name.charAt(i) >= 'א' && name.charAt(i) <= 'ת');
                t = (name.charAt(i) == ' ');
                if (t == true)
                    count++;
                if (x == false && y == false && z == false && t==false)
                {
                    lnErr.innerHTML = "יש להכניס שם תקין עם אותיות בעברית או אנגלית ";
                    return false;
                }
                if (count > 4)
                {
                    lnErr.innerHTML = "יש להכניס שם תקין עם אותיות בעברית או אנגלית ";
                    return false;
                }
            }
            return true;
        } // סוף בדיקת שם משפחה 

        function checkPass()
        {
            pass = document.getElementById("pass").value;
            //alert(pass);
            if (pass.length < 8 || pass.length >17)
            {
                passErr.innerHTML = "הסיסמה צריכה להכיל בין 8 ל16 תווים ";
                return false;
            }
            for (i = 0; i < pass.length; i++)
            {
                if (pass.charAt(i) == " ")
                {
                    passErr.innerHTML = "הסיסמה לא תקינה-חייבת להכיל רק תווים";
                    return false;
                }
            }

            return true;
        } // סוף בדיקת סיסמה
        
                        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
       <% string sql = "select * from tUsers where email='"+Session["email"]+"'";
           System.Data.DataTable dt = MyDbase.SelectFromTable(sql, "myData.mdb");
           Session["fn"] = dt.Rows[0]["fn"];
           Session["pass"] = dt.Rows[0]["pass"];
           Session["gender"] = dt.Rows[0]["gender"];
           %>
    <top>  
     <center>
       <font style="font-family:AhlaB; font-size:60px; color:cornflowerblue">
  שינוי פרטי הרשמה לאתר
       </font>
       <br />
          <br />
           <br /> 
   <font style="font-size:30px; font-family:Gisha; color:black"> 
      <table border="0" dir="rtl">
<form name="form1" method="post" runat="server" onsubmit="return cheackAll();">
    <tr>
        <td style="width:150px; height:20px"> שם פרטי</td>
        <td> <input type="text" name="fn" id="fn" value="<%=Session["fn"]%>" size="20px" style="width:96%; height:25px" /> </td>
        <td id="fnErr"style="font-size:15px; font-family:'BN Dragon'; color:black">  </td>  
    </tr>
    <tr>
       <td style="width:150px; height:20px"> שם משפחה</td>
       <td>  <input type="text" name="ln" id="ln" value="<%=Session["ln"]%>" size="20px" style="width:96%; height:25px" /> </td>
       <td id="lnErr"style="font-size:15px; font-family:'BN Dragon'; color:black" > </td>
   </tr>

     <tr> 
     <td style="width:150px; height:20px"> סיסמה </td> 
     <td>  <input type="password" name="pass" id="pass" value="<%=Session["pass"]%>" size="20px" style="width:96%; height:25px" /> </td>
     <td id="passErr"style="font-size:15px; font-family:'BN Dragon'; color:black" > </td>
    </tr>  
     <tr>
        <td>מגדר: </td>
        <td> 
            <%if (Session["gender"].Equals("זכר")) { %>
            <input type="radio" name="gender" value="זכר" checked="checked"/><font style="font-size:20px">זכר</font>
            <input type="radio" name="gender" value="נקבה" /><font style="font-size:20px">נקבה</font>
                          <%} else { %>
            <input type="radio" name="gender" value="זכר" /><font style="font-size:20px">זכר</font>
            <input type="radio" name="gender" value="נקבה" checked="checked"/><font style="font-size:20px">נקבה</font>
            <%} %> 
        </td>
     </tr>
     <tr>
     <td style="width:100px; height:20px"> סניף </td> 
 <td> <select name="snif" id="snif" style="font-size:20px;width:96%; height:25px" >
         <option value="<%=Session["snif"]%>" > <%=Session["snif"]%> </option>
         <option value=" לא קשור לסניף ספציפי "> לא קשור לסניף ספציפי</option>
         <option value="אופקים"> אופקים</option>
         <option value="אור יהודה">אור יהודה</option>
         <option value="אילת"> אילת</option> 
         <option value="אריאל"> אריאל</option>
         <option value="אשדוד">אשדוד</option>
         <option value="אשקלון">אשקלון</option>
         <option value="באר שבע">באר שבע</option> 
         <option value="בית שאן">בית שאן</option>
         <option value="בני שמעון"> בני שמעון</option>
         <option value="בת ים">בת ים</option>
         <option value="גבעתיים">גבעתיים</option> 
         <option value="דימונה"> דימונה</option>
         <option value=" הוד השרון">הוד השרון</option>
         <option value=" הרצליה">הרצליה</option>
         <option value="חדרה ">חדרה </option> 
         <option value=" חולון מערב "> חולון מערב </option>
         <option value="חולון מזרח ">חולון מזרח</option>
         <option value="חורה "> חורה</option>
         <option value="חיפה ">חיפה </option> 
         <option value=" טבריה ">טבריה </option>
         <option value=" טירה">טירה</option>
         <option value=" יבנה">יבנה</option>
         <option value=" יהוד"> יהוד </option> 
         <option value=" יפו ">יפו </option>
         <option value="ירושלים ">ירושלים</option>
         <option value=" ירכא">ירכא</option>
         <option value=" כוכב יאיר צור יגאל"> כוכב יאיר צור יגאל </option> 
         <option value="  כפר סבא"> כפר סבא </option>
         <option value=" כרמיאל"> כרמיאל</option>
         <option value=" לב השרון">לב השרון</option>
         <option value="לוד ">לוד </option> 
         <option value=" מג'ד אל כרום ">מג'ד אל כרום </option>
         <option value=" מודיעין"> מודיעין</option>
         <option value=" מטה אשר">מטה אשר</option>
         <option value=" מעלה אדומים">מעלה אדומים </option> 
         <option value=" נהריה "> נהריה</option>
         <option value=" נס ציונה">נס ציונה</option>
         <option value="נצרת עילית ">נצרת עילית</option>
         <option value="נתניה "> נתניה</option> 
         <option value=" עכו "> עכו</option>
         <option value="ערערה בנגב "> ערערה בנגב</option>
         <option value=" פתח תקווה"> פתח תקווה</option>
         <option value="צפת "> צפת </option> 
         <option value="  קריית מלאכי"> קריית מלאכי </option>
         <option value="קרית אונו ">קרית אונו</option>
         <option value="קיית גת">קרית גת</option>
         <option value=" קרית חיים">קרית חיים </option> 
         <option value=" קרית שמונה ">קריית שמונה </option>
         <option value="ראש העין ">ראש העין</option>
         <option value=" ראשון לציון מזרח">ראשון לציון מזרח</option>
         <option value=" ראשון לציון מערב"> ראשון לציון מערב</option> 
         <option value="  רהט"> רהט </option>
         <option value="רחובות ">רחובות</option>
         <option value=" רמלה">רמלה</option>
         <option value=" רמת גן צפון"> רמת גן צפון</option> 
         <option value="  רמת השרון">רמת השרון </option>
         <option value=" רמת גן דרום">רמת גן דרום</option>
         <option value=" רעננה">רעננה</option>
         <option value=" שדרות"> שדרות</option> 
         <option value="  שפרעם">שפרעם </option>
         <option value=" תל שבע"> תל שבע</option>
         <option value="תל אביב דרום "> תל אביב דרום</option>
         <option value="תל אביב צפון ">תל אביב צפון </option> 
</select> </td>                                                                                                                                                           
   </tr>
     <tr>
     <td style="width:100px; height:20px"> מי אני? </td> 
 <td> <select name="tafkid" id="tafkid" style="font-size:20px;width:96%; height:25px" >
         <option value="<%=Session["tafkid"]%>" ><%=Session["tafkid"]%></option>
     <option value=" אורח "> אורח</option>
         <option value="  חניך"> חניך</option>
         <option value="  חונך">חונך </option>
         <option value=" הורה ">הורה </option>
         <option value=" חונך על ">  חונך על</option>
         <option value="  מדריך חונכים">  מדריך חונכים</option>
         <option value=" מדריך חניכים "> מדריך חניכים </option>
         <option value=" צוות מוביל- רכז "> צוות מוביל- רכז</option>
         <option value=" רכז סניף בוגר"> רכז סניף בוגר</option>      
</select> </td>                                                                                                                                                        
   </tr>
    <tr> 
        <td colspan="3">
             <center>
                 <input type="submit" value="שלח" />
             </center>
        </td>
    </tr>
          </form>
     </table>
       </font>
                  <font   style="font-size:20px; font-family:'BN Dragon'; color:black">
        <%=st %> 
                      <br />
                    <%=st1 %>   
              </font>

   </center>
</top>
</asp:Content>

