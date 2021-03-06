﻿<%-- Author: Anthony Beck --%>
<%@ Page Language="C#" MasterPageFile="~/MasterSiteTemplate.Master" AutoEventWireup="true" CodeBehind="AddIncident.aspx.cs" Inherits="AS3_WebApp.WebFormAddIncident" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderID" runat="server">
    <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>
    <div class="container">
        <div class="form">
            <label>Customer ID:</label>
            <asp:TextBox ID="textBoxGetCustomerID" runat="server" CssClass="formTextBox" />
            <asp:Button ID="buttonGetCustomer" runat="server" Text="Get Customer" CssClass="formButton" OnClick="buttonGetCustomer_Click" ValidationGroup="ValidationGroup2" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorGetCustomerID" runat="server" ErrorMessage="A Customer ID must be entered." ControlToValidate="textBoxGetCustomerID" ValidationGroup="ValidationGroup2"></asp:RequiredFieldValidator>
            <br />
            <asp:UpdatePanel ID="UpdatePanelCustomerDetails" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <label>Customer ID:</label>
                    <asp:TextBox ID="textBoxCustomerID" runat="server" ReadOnly="true" CssClass="formTextBox" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorCustomerID" runat="server" ErrorMessage="A Customer ID must be selected." ControlToValidate="textBoxCustomerID" ValidationGroup="ValidationGroup1"></asp:RequiredFieldValidator>
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
                    <asp:RangeValidator ID="RangeValidatorDateOpened" runat="server" ErrorMessage="Date Opened must be a DateTime format. DD/MM/YYYY" Type="Date" MaximumValue="9999/01/01" MinimumValue="1000/01/01" ControlToValidate="textBoxDateOpened" ValidationGroup="ValidationGroup1"></asp:RangeValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorDateOpened" runat="server" ErrorMessage="Date Opened is a required field." ControlToValidate="textBoxDateOpened" ValidationGroup="ValidationGroup1"></asp:RequiredFieldValidator>
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
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorTitle" runat="server" ErrorMessage="Title is a required field." ControlToValidate="textBoxTitle" ValidationGroup="ValidationGroup1"></asp:RequiredFieldValidator>
            <br />

            <label>Description:</label>
            <asp:TextBox ID="textBoxDescription" runat="server" TextMode="MultiLine" CssClass="formTextArea" />
            <br />

            <label></label>
            <asp:Button ID="buttonAddIncident" runat="server" Text="Add" CssClass="formButton" OnClick="buttonAdd_Click" ValidationGroup="ValidationGroup1" />
        </div>
    </div>

    <asp:SqlDataSource ID="SqlDataSourceCustomer" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportConnectionString %>" ProviderName="<%$ ConnectionStrings:TechSupportConnectionString.ProviderName %>"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourceProducts" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportConnectionString %>" ProviderName="<%$ ConnectionStrings:TechSupportConnectionString.ProviderName %>" SelectCommand="SELECT ProductCode, Name FROM Products"></asp:SqlDataSource>
</asp:Content>