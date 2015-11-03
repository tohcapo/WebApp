<%@ Page Language="C#" MasterPageFile="~/MasterSiteTemplate.Master" AutoEventWireup="true" CodeBehind="WebFormAddIncident.aspx.cs" Inherits="AS3_WebApp.WebFormAddIncident" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderID" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table>
                <tr>
                    <td width="150px">Customer ID:</td>
                    <td><asp:TextBox ID="textBoxCustomerID" runat="server" Width="200px" /></td>
                    <td><asp:Button ID="buttonGetCustomer" runat="server" Text="Get Customer" OnClick="buttonGetCustomer_Click"/></td>
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
        </ContentTemplate>
    </asp:UpdatePanel>
    <br />
    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>
            <table>
                <tr>
                    <td width="150px">Date Opened:</td>
                    <td><asp:TextBox ID="textBoxDateOpened" runat="server" Width="200px"/></td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorDate" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="textBoxDateOpened" ValidationExpression="(\d{2})-(\d{2})-(\d{4})" ValidationGroup="Group1"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Product:</td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportConnectionString %>" ProviderName="<%$ ConnectionStrings:TechSupportConnectionString.ProviderName %>" SelectCommand="SELECT Name, ProductCode FROM Products"></asp:SqlDataSource>
                        <asp:DropDownList ID="DropDownListProducts" runat="server" Width="200px" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="ProductCode"></asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorProduct" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="DropDownListProducts" ValidationGroup="Group1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Title:</td>
                    <td><asp:TextBox ID="textBoxTitle" runat="server" Width="200px" /></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorTitle" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="textBoxTitle" ValidationGroup="Group1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Description:</td>
                    <td>
                        <asp:TextBox ID="textBoxDescription" runat="server" Height="100px" Width="200px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorDescription" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="textBoxDescription" ValidationGroup="Group1"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:Button ID="buttonAdd" runat="server" Text="Add" width="200px" ValidationGroup="Group1" OnClick="buttonAdd_Click"/></td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>