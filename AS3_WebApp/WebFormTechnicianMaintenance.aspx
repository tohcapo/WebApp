<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormTechnicianMaintenance.aspx.cs" Inherits="AS3_WebApp.WebFormTechnicianMaintenance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: medium;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="/WebFormMain.apsx">HyperLink</asp:HyperLink>
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
    
    </div>
    </form>
</body>
</html>
