<%@ Page Language="C#" MasterPageFile="~/MasterSiteTemplate.Master" AutoEventWireup="true" CodeBehind="WebFormAddRegistration.aspx.cs" Inherits="AS3_WebApp.WebFormAddRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderID" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="container">
        <div class="form">
            <label>Customer:</label>
            <asp:DropDownList ID="dropCustomer" runat="server" DataSourceID="SqlDataSource1" DataTextField="CustomerID" DataValueField="CustomerID" CssClass="formDropDownList"></asp:DropDownList>
            <br />

            <label></label>
            <asp:Button ID="btnGetCustomerName" runat="server" Text="Get Customer" CssClass="formButton" OnClick="btnGetCustomerName_Click" />
            <br />
            <br />

            <asp:UpdatePanel ID="UpdatePanel" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <label>Customer Name:</label>
                    <asp:TextBox ID="txtCustomerName" runat="server" CssClass="formTextBox" ReadOnly="true" BackColor="Silver"></asp:TextBox>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="btnGetCustomerName" EventName="Click" />
                </Triggers>
            </asp:UpdatePanel>
            
            <br />
            <hr />
            <br />

            <label>Product:</label>
            <asp:DropDownList ID="dropProduct" runat="server" DataSourceID="SqlDataSource2" DataTextField="ProductCode" DataValueField="ProductCode" CssClass="formDropDownList"></asp:DropDownList>
            <br />

            <label>Registration Date:</label>
            <asp:TextBox ID="txtRegDate" runat="server"></asp:TextBox>
            <br />

            <asp:Button ID="btnRegProduct" runat="server" Text="Register Product" CssClass="formButton" />

        </div>
    </div>
         
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportConnectionString %>" SelectCommand="SELECT [CustomerID] FROM [Registrations]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportConnectionString %>" SelectCommand="SELECT [ProductCode] FROM [Registrations]"></asp:SqlDataSource>
     
</asp:Content>