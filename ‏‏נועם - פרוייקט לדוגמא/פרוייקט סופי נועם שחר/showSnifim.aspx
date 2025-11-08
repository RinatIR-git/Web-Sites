<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="showSnifim.aspx.cs" Inherits="showSnifim" %>

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
רשימת הסניפים המלאה:
       </font>
            <font   style="font-size:20px; font-family:'BN Anna'; color:black"> <%=st %> </font>
      </center>
                                           <br />
    <center>
            <button onclick="topFunction()" id="myBtn" title="חזרה לתחילת העמוד">חזרה לתחילת העמוד</button>
    </center>
</asp:Content>

