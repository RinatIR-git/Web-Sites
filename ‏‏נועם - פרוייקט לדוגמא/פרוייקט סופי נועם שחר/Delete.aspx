<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Delete.aspx.cs" Inherits="Delete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
        <%
        String x = Request.QueryString["mail"];
        string sql = "delete * from tUsers where email= " +  "'" +x + "'" ;
        MyDbase.ChangeTable(sql, "myData.mdb");
        Response.Redirect("DeleteUsers.aspx");

         %>
</asp:Content>

