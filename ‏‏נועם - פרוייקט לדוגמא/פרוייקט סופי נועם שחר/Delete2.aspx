<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Delete2.aspx.cs" Inherits="Delete2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
            <%
                String x = Request.QueryString["email"];
                 String y = Request.QueryString["freeText"];
                string sql = "delete * from tHavaia where email= " +  "'" +x + "'AND freeText=" +  "'" + y+ "'" ;
                MyDbase.ChangeTable(sql, "myData.mdb");
                Response.Redirect("DeleteHvaia.aspx");
         %>
</asp:Content>

