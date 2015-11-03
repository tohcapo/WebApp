<%@ Page Language="C#" MasterPageFile="~/MasterSiteTemplate.Master" AutoEventWireup="true" CodeBehind="CustomerIncidents.aspx.cs" Inherits="AS3_WebApp.WebFormCustomerIncidents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderID" runat="server">
    <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <div class="container">
                <div class="form">
                    <label>Customer ID:</label>
                    <asp:TextBox ID="textBoxCustomerID" runat="server" CssClass="formTextBox" />
                    <asp:Button ID="buttonGetCustomer" runat="server" Text="Get Customer" CssClass="formButton" OnClick="buttonGetCustomer_Click" />
            
                    <br />
                    <hr />

                    <label>Customer ID:</label>
                    <asp:TextBox ID="textBoxCustomerIDDisplay" runat="server" ReadOnly="true" CssClass="formTextBox" BackColor="Silver" />
                    <br />
                    <label>Name:</label>
                    <asp:TextBox ID="textBoxName" runat="server" ReadOnly="true" CssClass="formTextBox" BackColor="Silver" />
                    <br />
                    <label>Address</label>
                    <asp:TextBox ID="textboxAddress" runat="server" ReadOnly="true" CssClass="formTextBox" BackColor="Silver" />
                    <br />
                    <label>City. State. Zip:</label>
                    <asp:TextBox ID="textBoxCity" runat="server" ReadOnly="true" CssClass="formTextBoxSmall" BackColor="Silver" />
                    <asp:TextBox ID="textBoxState" runat="server" ReadOnly="true" CssClass="formTextBoxSmall" BackColor="Silver" />
                    <asp:TextBox ID="textBoxZipCode" runat="server" ReadOnly="true" CssClass="formTextBoxSmall" BackColor="Silver" />
                    <br />
                    <label>Phone</label>
                    <asp:TextBox ID="textBoxPhone" runat="server" ReadOnly="true" CssClass="formTextBox" BackColor="Silver" />
                    <br />
                    <label>Email</label>
                    <asp:TextBox ID="textBoxEmail" runat="server" ReadOnly="true" CssClass="formTextBox" BackColor="Silver" />
                    <br />
                </div>
                <asp:GridView ID="GridViewIncidents" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceIncidents" Width="100%">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="ProductCode" HeaderText="ProductCode" SortExpression="ProductCode" />
                        <asp:BoundField DataField="DateOpened" HeaderText="DateOpened" SortExpression="DateOpened" />
                        <asp:BoundField DataField="DateClosed" HeaderText="DateClosed" SortExpression="DateClosed" />
                        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    </Columns>
                </asp:GridView>
            </div>
            <asp:SqlDataSource ID="SqlDataSourceIncidents" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportConnectionString %>" SelectCommand=""></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSourceCustomer" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportConnectionString %>" SelectCommand=""></asp:SqlDataSource>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="buttonGetCustomer" EventName="Click" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>