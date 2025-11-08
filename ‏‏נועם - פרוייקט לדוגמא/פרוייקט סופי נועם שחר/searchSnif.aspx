<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="searchSnif.aspx.cs" Inherits="searchSnif" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <script language="javascript">
            function cheackAll()
        {
            cityErr.innerHTML = "";
            f = true;
            if (checkCity() == false)
                f = false;
            return f;
        }// סוף פעולה ראשית
        function  checkCity()
        {
            city = document.getElementById("city").value;
            //alert(city);

            if (city.length <1 || city.length >25)
            {
                cityErr.innerHTML = "אורך שם העיר לא תקין";
                return false;
            }
            count=0;
            for (i = 0; i < city.length; i++)
            {
                z = (city.charAt(i) >= 'א' && city.charAt(i) <= 'ת');
                t = (city.charAt(i) == " "||city.charAt(i) == '-' ); 
                if (t == true)
                    count++;
                if (z == false && t==false)
                {
                    cityErr.innerHTML = "יש להכניס שם עיר עם אותיות בעברית ";
                    return false;
                }
                if (count > 5)
                {
                    cityErr.innerHTML = "יש להכניס שם עיר המכיל אותיות בעברית בלבד ";
                    return false;
                }
            }
            return true;
        } // סוף בדיקת עיר
 </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <top>  
     <center>
       <font style="font-family:AhlaB; font-size:60px; color:cornflowerblue">
  חיפוש סניף לפי עיר
       </font>
       <br />
          <br />
           <br /> 
   <font style="font-size:30px; font-family:Gisha; color:black"> 
      <table border="0" dir="rtl">
<form name="form1" method="post" runat="server" onsubmit="return cheackAll();">
    <tr>
        <td style="width:150px; height:20px">העיר: </td>
        <td> <input type="text" name="city" id="city" size="20px" style="width:96%; height:25px" /> </td>
        <td id="cityErr"style="font-size:15px; font-family:'BN Dragon'; color:black">  </td>  
    </tr>
    <tr> 
        <td colspan="3">
             <center>
                 <input type="submit" value="חפש" />
             </center>
        </td>
    </tr>
          </form>
     </table>
       </font>
             <center>  <font   style="font-size:20px; font-family:'BN Anna'; color:black"> <%=st %> </font></center>
   </center>
               <font style="font-family:AhlaB; font-size:30px; color:black">
                   <a href="showSnifim.aspx">לרשימת הסניפים המלאה </a>
       </font>
</top> 
</asp:Content>

