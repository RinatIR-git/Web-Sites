<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Delete1.aspx.cs" Inherits="Delete1aspx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
            <%
        String x = Request.QueryString["tz"];
        string sql = "delete * from tReshomim where tz= " +  "'" +x + "'" ;
        MyDbase.ChangeTable(sql, "myData.mdb");
        Response.Redirect("DeleteKrembo.aspx");
         %>
</asp:Content>

