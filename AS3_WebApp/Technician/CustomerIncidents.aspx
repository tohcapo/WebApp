<%@ Page Language="C#" MasterPageFile="~/MasterSiteTemplate.Master" AutoEventWireup="true" CodeBehind="CustomerIncidents.aspx.cs" Inherits="AS3_WebApp.WebFormCustomerIncidents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderID" runat="server">
    <div class="container">
        <div class="form">
            <label>Customer ID:</label>
            <asp:TextBox ID="textBoxCustomerID" runat="server" CssClass="formTextBox" />
            <asp:Button ID="buttonGetCustomer" runat="server" Text="Get Customer" CssClass="formButton" />
            
            <br />
            <hr />

            <label>Customer ID:</label>
            <asp:TextBox ID="textBoxCustomerIDDisplay" runat="server" ReadOnly="true" CssClass="formTextBox" />
            <br />
            <label>Name:</label>
            <asp:TextBox ID="textBoxName" runat="server" ReadOnly="true" CssClass="formTextBox" />
            <br />
            <label>Address</label>
            <asp:TextBox ID="textboxAddress" runat="server" ReadOnly="true" CssClass="formTextBox" />
            <br />
            <label>City. State. Zip:</label>
            <asp:TextBox ID="textBoxCity" runat="server" ReadOnly="true" CssClass="formTextBoxSmall" />
            <asp:TextBox ID="textBoxState" runat="server" ReadOnly="true" CssClass="formTextBoxSmall" />
            <asp:TextBox ID="textBoxZipCode" runat="server" ReadOnly="true" CssClass="formTextBoxSmall" />
            <br />
            <label>Phone</label>
            <asp:TextBox ID="textBoxPhone" runat="server" ReadOnly="true" CssClass="formTextBox" />
            <br />
            <label>Email</label>
            <asp:TextBox ID="textBoxEmail" runat="server" ReadOnly="true" CssClass="formTextBox" />
            <br />
        </div>
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
    </div>
    <asp:SqlDataSource ID="TechSupportDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportConnectionString %>" SelectCommand=""></asp:SqlDataSource>
</asp:Content>