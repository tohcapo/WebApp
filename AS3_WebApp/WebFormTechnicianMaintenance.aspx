<%@ Page Language="C#" MasterPageFile="~/MasterSiteTemplate.Master" AutoEventWireup="true" CodeBehind="WebFormTechnicianMaintenance.aspx.cs" Inherits="AS3_WebApp.WebFormTechnicianMaintenance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderID" runat="server">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebFormMain.aspx">Back</asp:HyperLink>
        <br />
        <table border="1">
            <tr style="font-weight:bold">
                <td style="width:200px" class="auto-style1">Tech ID</td>
                <td style="width:200px" class="auto-style1">Name</td>
                <td style="width:200px" class="auto-style1">Email</td>
                <td style="width:200px" class="auto-style1">Phone</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Button ID="buttonEdit" runat="server" Text="Edit" />
                </td>
                <td>
                    <asp:Button ID="buttonDelete" runat="server" Text="Delete" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Button ID="buttonEdit0" runat="server" Text="Edit" />
                </td>
                <td>
                    <asp:Button ID="buttonDelete0" runat="server" Text="Delete" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Button ID="buttonEdit1" runat="server" Text="Edit" />
                </td>
                <td>
                    <asp:Button ID="buttonDelete1" runat="server" Text="Delete" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Button ID="buttonEdit2" runat="server" Text="Edit" />
                </td>
                <td>
                    <asp:Button ID="buttonDelete2" runat="server" Text="Delete" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Button ID="buttonEdit3" runat="server" Text="Edit" />
                </td>
                <td>
                    <asp:Button ID="buttonDelete3" runat="server" Text="Delete" />
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Button ID="buttonEdit4" runat="server" Text="Edit" />
                </td>
                <td>
                    <asp:Button ID="buttonDelete4" runat="server" Text="Delete" />
                </td>
            </tr>
        </table>
</asp:Content>