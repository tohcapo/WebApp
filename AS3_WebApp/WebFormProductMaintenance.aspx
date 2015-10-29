<%@ Page Language="C#" MasterPageFile="~/MasterSiteTemplate.Master" AutoEventWireup="true" CodeBehind="WebFormProductMaintenance.aspx.cs" Inherits="AS3_WebApp.WebFormProductMaintenance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderID" runat="server">
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/WebFormMain.aspx">Back</asp:HyperLink>
        <table border="1">
            <tr style="font-weight:bold">
                <td style="width:200px">Product Code</td>
                <td style="width:200px">Name</td>
                <td style="width:200px">Version</td>
                <td style="width:200px">Release Date</td>
            </tr>
            <tr>
                <td>DRAFT10</td>
                <td>Draft Manager 1.0</td>
                <td>1.0</td>
                <td>12/1/2010</td>
                <td>
                    <asp:Button ID="button1" runat="server" Text="Edit" />
                </td>
                <td>
                    <asp:Button ID="button2" runat="server" Text="Delete" />
                </td>
            </tr>
        </table>
</asp:Content>