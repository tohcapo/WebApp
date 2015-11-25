<%-- Author: Anthony Beck --%>
<%@ Page Language="C#" MasterPageFile="~/MasterSiteTemplate.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AS3_WebApp.WebFormLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderID" runat="server">
    <div class="container">
        <asp:Login ID="Login" runat="server"></asp:Login>
    </div>
</asp:Content>