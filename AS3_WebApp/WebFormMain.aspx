<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormMain.aspx.cs" Inherits="AS3_WebApp.WebFormMain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/WebFormTechnicianMaintenance.aspx">Technician Maintenance</asp:HyperLink><br/>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/WebFormProductMaintenance.aspx">Product Maintenance</asp:HyperLink><br/>
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/WebFormCustomerIncidents.aspx">Customer Incidents</asp:HyperLink><br/>
        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/WebFormAddIncident.aspx">Add Incident</asp:HyperLink><br/>
        <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/WebFormAddRegistration.aspx">Add Registration</asp:HyperLink><br/>
        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/WebFormUserAccountMaintenance.aspx">User Account Maintenance</asp:HyperLink><br/>

    </div>
    </form>
</body>
</html>
