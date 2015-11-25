<%-- Author: Luke Michels --%>
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterSiteTemplate.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="AS3_WebApp.WebFormMain" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderID" runat="server">
    <div class="container">
        <h2 class="header">Welcome to Tech Support</h2>
        <p>
            We are a web based tech support company.
            Anyone in need of software maintenance
            can contact us and take a ticket and a technician will arrive at your residence and
            fix the tech related problem
        </p>
        <asp:HyperLink ID="HyperLinkLogIn" runat="server" NavigateUrl="~/Login.aspx">Login</asp:HyperLink>
    </div>
</asp:Content>
