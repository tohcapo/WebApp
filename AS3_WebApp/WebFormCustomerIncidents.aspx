<%@ Page Language="C#" MasterPageFile="~/MasterSiteTemplate.Master" AutoEventWireup="true" CodeBehind="WebFormCustomerIncidents.aspx.cs" Inherits="AS3_WebApp.WebFormCustomerIncidents" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderID" runat="server">
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/WebFormMain.aspx">Back</asp:HyperLink>
    <br />
    <table>
            <tr>
                <td>Customer ID:</td>
                <td><asp:TextBox ID="textCustomerID" runat="server" Width="200px" /></td>
                <td><asp:Button ID="buttonGetCustomer" runat="server" Text="Get Customer" /></td>
            </tr>
            <tr>
               <td>Customer ID:</td>
                <td><asp:TextBox ID="textCustomerIDDisplay" runat="server" ReadOnly="true" Width="200px"/></td>
            </tr>
            <tr>
                <td>Name:</td>
                <td><asp:TextBox ID="textName" runat="server" ReadOnly="true" Width="200px"/></td>
            </tr>
            <tr>
                <td>Address:</td>
                <td><asp:TextBox ID="textAddress" runat="server" ReadOnly="true" Width="200px"/></td>
            </tr>
            <tr>
                <td>City. State. Zip:</td>
                <td><asp:TextBox ID="textCity" runat="server" ReadOnly="true" Width="120px"/></td>
                <td><asp:TextBox ID="textState" runat="server" ReadOnly="true" Width="70px"/></td>
                <td><asp:TextBox ID="textZip" runat="server" ReadOnly="true" Width="70px"/></td>
            </tr>
            <tr>
                <td>Phone:</td>
                <td><asp:TextBox ID="textPhone" runat="server" ReadOnly="true" Width="200px"/></td>
            </tr>
            <tr>
            <td>Email:</td>
            <td><asp:TextBox ID="textEmail" runat="server" ReadOnly="true" Width="200px"/></td>
            </tr>
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