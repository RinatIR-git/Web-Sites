<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <script language="javascript">
        function cheackAll()
        {
            emailErr.innerHTML = "";
            passErr.innerHTML = "";
            f = true;
            if (checkEmail() == false)
                f = false;
            if (checkPass() == false)
                f = false;
            return f;
        }// סוף פעולה ראשית
        function checkEmail() {
            mail = document.getElementById("email").value;
            //alert(mail);
            if (mail.length < 8 || mail.length > 254) {
                emailErr.innerHTML = "אורך האימייל שהוכנס לא תקין ";
                return false;
            }
            for (i = 0; i < mail.length; i++) {
                if (mail.charAt(i) >= 'א' && mail.charAt(i) <= 'ת' || mail.charAt(i) == " ") {
                    emailErr.innerHTML = "האימייל לא תקין";
                    return false;
                }
            }
            if (mail.indexOf('@') != mail.lastIndexOf('@')) {
                emailErr.innerHTML = "האימייל לא תקין";
                return false;
            }
            if ((mail.indexOf('@') < 2) || (mail.lastIndexOf('.') < mail.indexOf('@') + 3)) {
                emailErr.innerHTML = "האימייל לא תקין";
                return false;
            }
            return true;
        } // סוף בדיקת מייל

        function checkPass() {
            pass = document.getElementById("pass").value;
            //alert(pass);
            if (pass.length < 8 || pass.length > 17) {
                passErr.innerHTML = "הסיסמה צריכה להכיל בין 8 ל16 תווים ";
                return false;
            }
            for (i = 0; i < pass.length; i++) {
                if (pass.charAt(i) == " ") {
                    passErr.innerHTML = "הסיסמה לא תקינה-חייבת להכיל רק תווים";
                    return false;
                }
            }

            return true;
        } // סוף בדיקת סיסמה

                        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<center>
    <font style="font-family:AhlaB; font-size:60px; color:cornflowerblue">
  התחבר לאתר:
       </font>
      <br />
   </center>
         
   <font style="font-size:30px; font-family:Gisha; color:black"> 
      <table border="0" dir="rtl">
<form name="form1" method="post" runat="server" onsubmit="return cheackAll()">
    <tr> 
  <td style="width:150px; height:20px"> מייל </td> <td>  <input type="text" name="email" id="email" size="20px" style="width:96%; height:25px" /> </td>
<td id="emailErr"style="font-size:15px; font-family:'BN Dragon'; color:black" > </td>
    </tr>
    <tr> 
  <td style="width:150px; height:20px"> סיסמה </td> <td>  <input type="password" name="pass" id="pass" size="20px" style="width:96%; height:25px" /> </td>
<td id="passErr"style="font-size:15px; font-family:'BN Dragon'; color:black" > </td>
    </tr>
    <tr> 
        <td colspan="2"> <center>  <input type="submit" value="שלח" /> </center> </td>
    </tr>
          </form>
     </table>
       </font>
         <font   style="font-size:20px; font-family:'BN Dragon'; color:black">
        <%=st %> 
              </font>
   
</asp:Content>

