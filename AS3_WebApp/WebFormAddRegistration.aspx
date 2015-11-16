<%@ Page Language="C#" MasterPageFile="~/MasterSiteTemplate.Master" AutoEventWireup="true" CodeBehind="WebFormAddRegistration.aspx.cs" Inherits="AS3_WebApp.WebFormAddRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 1138px;
        }
        .auto-style4 {
            width: 279px;
            height: 23px;
        }
        .auto-style5 {
            width: 1138px;
            height: 23px;
        }
        .auto-style6 {
            width: 279px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderID" runat="server">

    <table class="auto-style1">
        <tr>
            <td class="auto-style4">
                Customer:</td>
            <td class="auto-style5">
                <asp:DropDownList ID="dropCustomer" runat="server" Height="16px" Width="164px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                Product:</td>
            <td class="auto-style3">
                <asp:DropDownList ID="dropProduct" runat="server" Height="16px" Width="164px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                Reg Date:</td>
            <td class="auto-style3">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>

    </table>
    <p class="auto-style1">
                <asp:Button ID="btnRegProduct" runat="server" Text="Register Product" Width="120px" />
            </p>



</asp:Content>