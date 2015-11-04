<%@ Page Language="C#" MasterPageFile="~/MasterSiteTemplate.Master" AutoEventWireup="true" CodeBehind="WebFormAddIncident.aspx.cs" Inherits="AS3_WebApp.WebFormAddIncident" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderID" runat="server">
    <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>
    <div class="container">
        <div class="form">
            <label>Customer ID:</label>
            <asp:TextBox ID="textBoxGetCustomerID" runat="server" CssClass="formTextBox" />
            <asp:Button ID="buttonGetCustomer" runat="server" Text="Get Customer" CssClass="formButton" OnClick="buttonGetCustomer_Click" />
            <br />
            <asp:UpdatePanel ID="UpdatePanelCustomerDetails" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <label>Customer ID:</label>
                    <asp:TextBox ID="textBoxCustomerID" runat="server" ReadOnly="true" CssClass="formTextBox" />
                    <br />

                    <label>Name:</label>
                    <asp:TextBox ID="textBoxName" runat="server" ReadOnly="true" CssClass="formTextBox" />
                    <br />
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="buttonGetCustomer" EventName="Click" />
                </Triggers>
             </asp:UpdatePanel>
            <hr />
            <label>Date Opened:</label>
            <asp:UpdatePanel ID="UpdatePanelGetCurrentDateTime" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <asp:TextBox ID="textBoxDateOpened" runat="server" CssClass="formTextBox" />
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="buttonGetCurrentDateTime" EventName="Click" />
                </Triggers>
            </asp:UpdatePanel>
            <asp:Button ID="buttonGetCurrentDateTime" runat="server" Text="Use Current Time" CssClass="formButton" OnClick="buttonGetCurrentDateTime_Click" />
            <br />

            <label>Product:</label>
            <asp:DropDownList ID="dropDownListProducts" runat="server" DataSourceID="SqlDataSourceProducts" DataTextField="Name" DataValueField="ProductCode" CssClass="formDropDownList" />
            <br />

            <label>Title:</label>
            <asp:TextBox ID="textBoxTitle" runat="server" CssClass="formTextBox" />
            <br />

            <label>Description:</label>
            <asp:TextBox ID="textBoxDescription" runat="server" TextMode="MultiLine" CssClass="formTextArea" />
            <br />

            <label></label>
            <asp:Button ID="buttonAddIncident" runat="server" Text="Add" CssClass="formButton" OnClick="buttonAdd_Click" />
        </div>
    </div>
    <asp:SqlDataSource ID="SqlDataSourceCustomer" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportConnectionString %>" ProviderName="<%$ ConnectionStrings:TechSupportConnectionString.ProviderName %>"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourceProducts" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportConnectionString %>" ProviderName="<%$ ConnectionStrings:TechSupportConnectionString.ProviderName %>" SelectCommand="SELECT ProductCode, Name FROM Products"></asp:SqlDataSource>
</asp:Content>