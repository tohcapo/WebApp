<%@ Page Language="C#" MasterPageFile="~/MasterSiteTemplate.Master" AutoEventWireup="true" CodeBehind="WebFormAddIncident.aspx.cs" Inherits="AS3_WebApp.WebFormAddIncident" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderID" runat="server">
    <table>
        <tr>
            <td>Customer ID:</td>
            <td><asp:TextBox ID="textBoxCustomerID" runat="server" Width="200px" /></td>
            <td><asp:Button ID="buttonGetCustomer" runat="server" Text="Get Customer"/></td>
        </tr>
        <tr>
            <td>Customer ID:</td>
            <td><asp:TextBox ID="textBoxCustomerIDDisplay" runat="server" ReadOnly="true" Width="200px"/></td>
        </tr>
        <tr>
            <td>Name:</td>
            <td><asp:TextBox ID="textBoxName" runat="server" ReadOnly="true" Width="200px"/></td>
        </tr>
    </table>
    <br />
    <table>
        <tr>
            <td>Date Opened:</td>
            <td><asp:TextBox ID="textBoxDateOpened" runat="server" ReadOnly="true" Width="200px"/></td>
        </tr>
        <tr>
            <td>Product:</td>
            <td>
                <asp:DropDownList ID="DropDownListProducts" runat="server" Width="200px"></asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>Title:</td>
            <td><asp:TextBox ID="textBoxTitle" runat="server" ReadOnly="true" Width="200px" /></td>
        </tr>
        <tr>
            <td>Description:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="100px" Width="200px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>