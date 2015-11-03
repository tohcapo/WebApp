<%@ Page Title="" Language="C#" MasterPageFile="~/MasterSiteTemplate.Master" AutoEventWireup="true" CodeBehind="WebFormMain.aspx.cs" Inherits="AS3_WebApp.WebFormMain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderID" runat="server">
    <h2>Welcome to Tech Support</h2>
    <p>
        <asp:HyperLink ID="HyperLinkLogIn" runat="server" NavigateUrl="~/WebFormLogin.aspx">Login</asp:HyperLink>
    </p>
    
    <p>We are a web based tech support company. Anyone in need of software maintenance</p>
    <p>&nbsp;can contact us and take a ticket and a technician will arrive at your residence and</p>
    <p>&nbsp;fix the tech related problem</p>
</asp:Content>
