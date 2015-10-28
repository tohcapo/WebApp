<%@ Page Language="C#" MasterPageFile="~/MasterSiteTemplate.Master" AutoEventWireup="true" CodeBehind="WebFormCustomerIncidents.aspx.cs" Inherits="AS3_WebApp.WebFormCustomerIncidents" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderID" runat="server">
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/WebFormMain.aspx">Back</asp:HyperLink>
    <br />
    <table>
            <tr>
                <td>Customer ID:</td>
                <td><asp:TextBox ID="TextBox1" runat="server" Width="200px" /></td>
                <td><asp:Button ID="button1" runat="server" Text="Get Customer" /></td>
            </tr>
            <tr>
               <td>Customer ID:</td>
                <td><asp:TextBox ID="TextBox2" runat="server" ReadOnly="true" Width="200px"/></td>
            </tr>
            <tr>
                <td>Name:</td>
                <td><asp:TextBox ID="TextBox3" runat="server" ReadOnly="true" Width="200px"/></td>
            </tr>
            <tr>
                <td>Address:</td>
                <td><asp:TextBox ID="TextBox4" runat="server" ReadOnly="true" Width="200px"/></td>
            </tr>
            <tr>
                <td>City. State. Zip:</td>
                <td><asp:TextBox ID="TextBox5" runat="server" ReadOnly="true" Width="120px"/></td>
                <td><asp:TextBox ID="TextBox6" runat="server" ReadOnly="true" Width="70px"/></td>
                <td><asp:TextBox ID="TextBox7" runat="server" ReadOnly="true" Width="70px"/></td>
            </tr>
            <tr>
                <td>Phone:</td>
                <td><asp:TextBox ID="TextBox8" runat="server" ReadOnly="true" Width="200px"/></td>
            </tr>
            <td>Email:</td>
            <td><asp:TextBox ID="TextBox9" runat="server" ReadOnly="true" Width="200px"/></td>
        </table>
        <br />
        <table border="1">
            <tr style="font-weight:bold">
                <td style="width:200px">Product</td>
                <td style="width:200px">Date Opened</td>
                <td style="width:200px">Date Closed</td>
                <td style="width:200px">Title</td>
            </tr>
        </table>
</asp:Content>