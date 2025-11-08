<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signupKrembo.aspx.cs" Inherits="signupKrembo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
             <script language="javascript">
        function cheackAll()
        {
            fnErr.innerHTML = "";
            lnErr.innerHTML = "";
            ageErr.innerHTML = "";
            sizeErr.innerHTML = "";
            genderErr.innerHTML = "";
            snifErr.innerHTML = "";
            tafkidErr.innerHTML = "";
            moralErr.innerHTML = "";
            phoneErr.innerHTML = "";
            tzErr.innerHTML = "";
            f = true;
            if (checkFirstName() == false)
                f = false;
            if (checkLastName() == false)
                f = false;
            if (checkAge() == false)
                f = false;
            if (checkSize() == false)
                f = false;
            if (checkGenderRadioButton() == false)
                f = false;
            if (checkSnif() == false)
                f = false;
            if (checkTafkid() == false)
                f = false;
            if (checkMoral() == false)
                f = false;
            if (checkPhone() == false)
                f = false;
            if (checkTz() == false)
                f = false;
            return f;
        }// סוף פעולה ראשית

        function checkFirstName() {
            name = document.getElementById("fn").value;
            //alert(name);

            if (name.length < 2 || name.length > 30) {
                fnErr.innerHTML = "אורך השם הפרטי לא תקין";
                return false;
            }
            count = 0;
            for (i = 0; i < name.length; i++) {
                x = (name.charAt(i) >= 'a' && name.charAt(i) <= 'z');
                y = (name.charAt(i) >= 'A' && name.charAt(i) <= 'Z');
                z = (name.charAt(i) >= 'א' && name.charAt(i) <= 'ת');
                t = (name.charAt(i) == " ");
                if (t == true)
                    count++;
                if (x == false && y == false && z == false && t == false) {
                    fnErr.innerHTML = "יש להכניס שם תקין עם אותיות בעברית או אנגלית ";
                    return false;
                }
                if (count > 4) {
                    fnErr.innerHTML = "יש להכניס שם תקין עם אותיות בעברית או אנגלית ";
                    return false;
                }
            }
            return true;
        } // סוף בדיקת שם


        function checkLastName() {
            name = document.getElementById("ln").value;
            //alert(name);

            if (name.length < 2 || name.length > 100) {
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
                if (x == false && y == false && z == false && t == false) {
                    lnErr.innerHTML = "יש להכניס שם תקין עם אותיות בעברית או אנגלית ";
                    return false;
                }
                if (count > 4) {
                    lnErr.innerHTML = "יש להכניס שם תקין עם אותיות בעברית או אנגלית ";
                    return false;
                }
            }
            return true;
        } // סוף בדיקת שם משפחה 

        function checkPhone() 
        {
            phone = document.getElementById("phone").value;
            //alert(phone);
            if (phone.length < 9||phone.length>10)
            {
                phoneErr.innerHTML = "אורך מספר הטלפון שהוכנס לא תקין ";
                return false;
            }
            if (isNaN(phone))
            {
                phoneErr.innerHTML = " המחרוזת לא מספרית ";
                return false;
            }
            if (phone.charAt(phone.length-7) == '0')
            {
                phoneErr.innerHTML = " המספר עצמו (לא הקידומת) לא יכול להתחיל מאפס";
                return false;
            }

            return true;
        } // סוף בדיקת מספר טלפון

        function checkGenderRadioButton()
        {
            selectedGender = document.getElementsByName("gender");
            if (selectedGender[0].checked || selectedGender[1].checked )
            {
                return true;
            }
            genderErr.innerHTML = "יש לבחור מגדר";
            return false;
        } //סוף בדיקת מגדר
        
        function checkSnif()
        {
            snif = document.getElementById("snif").selectedIndex;
           // alert(snif);
            if (snif == 0)
            {
                snifErr.innerHTML = " יש לבחור סניף";
                return false;
            }

            return true;
        }
            // סוף בדיקת סניף

        function checkTafkid()
        {
            tafkid = document.getElementById("tafkid").selectedIndex;
            // alert(tafkid);
            if (tafkid == 0)
            {
                tafkidErr.innerHTML = " יש לבחור מי אני";
                return false;
            }

            return true;
        }
                 // סוף בדיקת תפקיד

        function checkAge() {
            age = document.getElementById("age").selectedIndex;
           // alert(age);
            if (age == -1)
            {
                ageErr.innerHTML = " יש לבחור גיל";
                return false;
            }

            return true;
        } // סוף בדיקת גיל

        function checkSize()
        {
            size = document.getElementById("size").selectedIndex;
            // alert(size);
            if (size == 0) {
                sizeErr.innerHTML = " יש לבחור מידה";
                return false;
            }

            return true;
        }// סוף בדיקת מידה

        function checkMoral()
        {
            moral = document.getElementsByName("moral");
            if (moral[0].checked || moral[1].checked || moral[2].checked || moral[3].checked || moral[4].checked || moral[5].checked || moral[6].checked)
            {
                return true;
            }
            moralErr.innerHTML = "יש לבחור לפחות מורל אחד";
            return false;
        } //סוף בדיקת מורל

        function checkTz()
        {
            tz = document.getElementById("tz").value;
            //alert(tz);
            if (tz.length != 9)
            {
                tzErr.innerHTML = "אורך מספר הת.ז לא תקין ";
                return false;
            }
            if (isNaN(tz))
            {
                tzErr.innerHTML = " המחרוזת לא מספרית ";
                return false;
            }
            return true;
        } //  סוף בדיקת תעודת זהות
                 </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <top>  
     <center>
       <font style="font-family:AhlaB; font-size:60px; color:cornflowerblue">
  טופס הרשמה לתנועה- מלא את פרטי הפעיל
       </font>
       <br />
          <br />
           <br /> 
   <font style="font-size:30px; font-family:Gisha; color:black"> 
      <table border="0" dir="rtl">
<form name="form1" method="post" runat="server" onsubmit="return cheackAll();">
    <tr>
        <td style="width:150px; height:20px"> שם פרטי</td>
        <td> <input type="text" name="fn" id="fn" size="20px" style="width:96%; height:25px" /> </td>
        <td id="fnErr"style="font-size:15px; font-family:'BN Dragon'; color:black">  </td>  
    </tr>
    <tr>
       <td style="width:150px; height:20px"> שם משפחה</td>
       <td>  <input type="text" name="ln" id="ln" size="20px" style="width:96%; height:25px" /> </td>
       <td id="lnErr"style="font-size:15px; font-family:'BN Dragon'; color:black" > </td>
   </tr>
        <tr> 
     <td style="width:150px; height:20px"> מספר תעודת זהות </td> 
     <td>  <input type="text" name="tz" id="tz" size="20px" style="width:96%; height:25px" /> </td>
     <td id="tzErr"style="font-size:15px; font-family:'BN Dragon'; color:black" > </td>
    </tr>
         <tr>
     <td style="width:150px; height:20px"> גיל </td> 
         <td> <select name="age" id="age" style="font-size:20px;width:96%; height:25px" size="20px" >
         <option value="0" > סמן גיל </option>
<% for (int i = 0; i <= 100; i++)
        Response.Write("<option value=" + i + " >" + i + "</option>");
         %>
        </td>
         <td id="ageErr" style="font-size:15px; font-family:'BN Dragon'; color:black"> </td>                                                                                                                                                               </select> </td>
   </tr>
    <tr> 
     <td style="width:150px; height:20px"> מספר טלפון </td> 
     <td>  <input type="text" name="phone" id="phone" size="20px" style="width:96%; height:25px" /> </td>
     <td id="phoneErr"style="font-size:15px; font-family:'BN Dragon'; color:black" > </td>
    </tr>  
     <tr>
        <td>מגדר: </td>
        <td> 
            <input type="radio" name="gender" value="זכר" /><font style="font-size:20px">זכר</font>
            <input type="radio" name="gender" value="נקבה" /><font style="font-size:20px">נקבה</font>
        </td>
        <td id="genderErr"style="font-size:15px; font-family:'BN Dragon'; color:black"></td>
     </tr>
     <tr>
     <td style="width:100px; height:20px"> סניף </td> 
 <td> <select name="snif" id="snif" style="font-size:20px;width:96%; height:25px" >
         <option value="0" > בחר סניף</option>
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
         <td id="snifErr" style="font-size:15px; font-family:'BN Dragon'; color:black"> </td>                                                                                                                                                              
   </tr>
     <tr>
     <td style="width:100px; height:20px"> מי אני? </td> 
 <td> <select name="tafkid" id="tafkid" style="font-size:20px;width:96%; height:25px" >
         <option value="0" > מי אני?</option>
         <option value="  חניך"> חניך</option>
         <option value="  חונך">חונך </option>
         <option value=" חונך על ">  חונך על</option>
         <option value="  מדריך חונכים">  מדריך חונכים</option>
         <option value=" מדריך חניכים "> מדריך חניכים </option>
         <option value=" צוות מוביל- רכז "> צוות מוביל- רכז</option>
         <option value=" רכז סניף בוגר"> רכז סניף בוגר</option>      
</select> </td>
              <td id="tafkidErr" style="font-size:15px; font-family:'BN Dragon'; color:black">
                   </td>                                                                                                                                                        
   </tr>
         <tr>
     <td style="width:100px; height:20px"> מידת חולצת תנועה </td> 
 <td> <select name="size" id="size" style="font-size:20px;width:96%; height:25px" >
         <option value="0" > מידת חולצת תנועה</option>
         <option value="XXS">XXS</option> 
         <option value="XS">XS</option>
         <option value="S">S</option>
         <option value="M">M</option>
         <option value="L">L</option>
         <option value="XL ">XL</option>
         <option value="XXL ">XXL</option>     
</select> </td>
              <td id="sizeErr" style="font-size:15px; font-family:'BN Dragon'; color:black">
                   </td>                                                                                                                                                               
   </tr>
       <tr>
        <td>מורלים אהובים </td>
        <td> 
            <input type="checkbox" name="moral" value="אם יש לכם תרוח" /><font style="font-size:20px">אם יש לכם תרוח</font>
            <input type="checkbox" name="moral" value="בונגה בונגה" /><font style="font-size:20px">בונגה בונגה</font>
            <br />
            <input type="checkbox" name="moral" value="הקרמבו שלי" /><font style="font-size:20px">הקרמבו שלי</font>
            <input type="checkbox" name="moral" value="יאללה קרמבו" /><font style="font-size:20px">יאללה קרמבו</font>
           <br />
            <input type="checkbox" name="moral" value="איפה הכנפיים" /><font style="font-size:20px">איפה הכנפיים</font>
            <input type="checkbox" name="moral" value="הנה זה בא" /><font style="font-size:20px">הנה זה בא</font>
            <br />
             <input type="checkbox" name="moral" value="ריקוד הבטטה" /><font style="font-size:20px">ריקוד הבטטה</font>
        </td>
        <td id="moralErr"style="font-size:15px; font-family:'BN Dragon'; color:black"></td>
     </tr>
        <tr> 
     <td style="width:150px; height:20px" colspan="2" > דברים שחשוב שנדע: 
            <br />
            <textarea name="freeText" style="color:black; font-family:Arial; font-size:17px;width:96%; height:70px"> </textarea>
     </td>
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
              </font>
   </center>
</top>
</asp:Content>

