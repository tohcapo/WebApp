<%@ Page Language="C#" MasterPageFile="~/MasterSiteTemplate.Master" AutoEventWireup="true" CodeBehind="WebFormCustomerIncidents.aspx.cs" Inherits="AS3_WebApp.WebFormCustomerIncidents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderID" runat="server">
    <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>

    <div class="container">
    <asp:UpdatePanel ID="UpdatePanelCustomerDetails" runat="server">
            <ContentTemplate>
                <div class="form">
                    <label>Customer ID:</label>
                    <asp:TextBox ID="textCustomerID" runat="server" CssClass="formTextBox" />
                    <asp:Button ID="buttonGetCustomer" runat="server" Text="Get Customer" CssClass="formButton" OnClick="buttonGetCustomer_Click" />
                    <br />
                        <label>Customer ID:</label>
                        <asp:TextBox ID="textCustomerIDDisplay" runat="server" ReadOnly="true" CssClass="formTextBox" />
                        <br />

                        <label>Name:</label>
                        <asp:TextBox ID="textName" runat="server" ReadOnly="true" CssClass="formTextBox" />
                        <br />
            
                        <label>Address:</label>
                        <asp:TextBox ID="textAddress" runat="server" ReadOnly="true" CssClass="formTextBox" />
                        <br />

                        <label>City. State. Zip:</label>
                        <asp:TextBox ID="textCity" runat="server" ReadOnly="true" CssClass="formTextBoxSmall" />
                        <asp:TextBox ID="textState" runat="server" ReadOnly="true" CssClass="formTextBoxSmall" />
                        <asp:TextBox ID="textZipCode" runat="server" ReadOnly="true" CssClass="formTextBoxSmall" />
                        <br />

                        <label>Phone:</label>
                        <asp:TextBox ID="textPhone" runat="server" ReadOnly="true" CssClass="formTextBox" />
                        <br />
            
                        <label>Email:</label>
                        <asp:TextBox ID="textEmail" runat="server" ReadOnly="true" CssClass="formTextBox" />        
                    </div>

        <hr />
        <br />
        
                <asp:Button ID="buttonCloseIncident" runat="server" Enabled="false" Visible="false" Text="Close Selected Incident" OnClick="buttonCloseIncident_Click" />
                <br />
                <br />

        <asp:GridView ID="GridViewIncidents" runat="server" AutoGenerateColumns="False" DataKeyNames="IncidentID" DataSourceID="TechSupportDataSource" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="IncidentID" HeaderText="IncidentID" InsertVisible="False" ReadOnly="True" SortExpression="IncidentID" />
                <asp:BoundField DataField="ProductCode" HeaderText="ProductCode" SortExpression="ProductCode" />
                <asp:BoundField DataField="DateOpened" HeaderText="DateOpened" SortExpression="DateOpened" />
                <asp:BoundField DataField="DateClosed" HeaderText="DateClosed" SortExpression="DateClosed" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" SortExpression="CustomerID" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>    
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="buttonGetCustomer" EventName="Click" />
        </Triggers>
    </asp:UpdatePanel>
    </div>
    <asp:SqlDataSource ID="TechSupportDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportConnectionString %>" SelectCommand=""></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSourceCustomer" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportConnectionString %>" SelectCommand=""></asp:SqlDataSource>
</asp:Content>