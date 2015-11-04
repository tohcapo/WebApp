<%@ Page Language="C#" MasterPageFile="~/MasterSiteTemplate.Master" AutoEventWireup="true" CodeBehind="WebFormCustomerIncidents.aspx.cs" Inherits="AS3_WebApp.WebFormCustomerIncidents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderID" runat="server">


    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
        <table>
            <tr>
                <td width="150px">Customer ID:</td>
                <td><asp:TextBox ID="textCustomerID" runat="server" Width="200px" /></td>
            </tr>
            <tr>
                <td></td>
                <td><asp:Button ID="buttonGetCustomer" runat="server" Text="Get Customer" OnClick="buttonGetCustomer_Click" /></td>
            </tr>
        </table>
        <br />
        <table>
            <tr>
                <td width="150px">Customer ID:</td>
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
                <td><asp:TextBox ID="textCity" runat="server" ReadOnly="true" Width="120px"/>
                <asp:TextBox ID="textState" runat="server" ReadOnly="true" Width="70px"/>
                <asp:TextBox ID="textZip" runat="server" ReadOnly="true" Width="70px"/></td>
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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IncidentID" DataSourceID="TechSupportDataSource" Width="100%">
                <Columns>
                    <asp:BoundField DataField="IncidentID" HeaderText="IncidentID" InsertVisible="False" ReadOnly="True" SortExpression="IncidentID" />
                    <asp:BoundField DataField="ProductCode" HeaderText="ProductCode" SortExpression="ProductCode" />
                    <asp:BoundField DataField="DateOpened" HeaderText="DateOpened" SortExpression="DateOpened" />
                    <asp:BoundField DataField="DateClosed" HeaderText="DateClosed" SortExpression="DateClosed" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" SortExpression="CustomerID" />
                </Columns>
            </asp:GridView>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="buttonGetCustomer" EventName="Click" />
        </Triggers>
    </asp:UpdatePanel>
    <asp:SqlDataSource ID="TechSupportDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportConnectionString %>" SelectCommand=""></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourceCustomer" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportConnectionString %>" SelectCommand=""></asp:SqlDataSource>
</asp:Content>