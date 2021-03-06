﻿<%-- Author: Zach McEnroe --%>
<%@ Page Language="C#" MasterPageFile="~/MasterSiteTemplate.Master" AutoEventWireup="true" CodeBehind="TechnicianMaintenance.aspx.cs" Inherits="AS3_WebApp.WebFormTechnicianMaintenance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderID" runat="server">
    <div class="container">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportConnectionString %>" SelectCommand="SELECT * FROM [Technicians]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Technicians] WHERE [TechID] = @original_TechID AND [Name] = @original_Name AND [Email] = @original_Email AND [Phone] = @original_Phone" InsertCommand="INSERT INTO [Technicians] ([Name], [Email], [Phone]) VALUES (@Name, @Email, @Phone)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Technicians] SET [Name] = @Name, [Email] = @Email, [Phone] = @Phone WHERE [TechID] = @original_TechID AND [Name] = @original_Name AND [Email] = @original_Email AND [Phone] = @original_Phone">
            <DeleteParameters>
                <asp:Parameter Name="original_TechID" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Phone" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="original_TechID" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Phone" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <label __designer:mapid="28">&nbsp; </label>
                    &nbsp;<asp:GridView ID="GridViewTechnicians" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="TechID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="TechID" HeaderText="TechID" InsertVisible="False" ReadOnly="True" SortExpression="TechID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            </Columns>
        </asp:GridView>
        <br __designer:mapid="2a" />

                    <label __designer:mapid="2b">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
&nbsp;<asp:TextBox ID="txtName" runat="server" CssClass="formTextBox" />
                    <br __designer:mapid="2d" />

                    <label __designer:mapid="2e">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
                    &nbsp;<asp:TextBox ID="txtEmail" runat="server" CssClass="formTextBox" />
                    <br __designer:mapid="30" />

                    <label __designer:mapid="31">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phone:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
                    &nbsp;<asp:TextBox ID="txtPhone" runat="server" CssClass="formTextBox" />
                    <br __designer:mapid="33" />

                    <asp:Button ID="btnAddTechnician" runat="server" Text="Add" OnClick="btnAddTechnician_Click1" />
    </div>
</asp:Content>