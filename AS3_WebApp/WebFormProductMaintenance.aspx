<%@ Page Language="C#" MasterPageFile="~/MasterSiteTemplate.Master" AutoEventWireup="true" CodeBehind="WebFormProductMaintenance.aspx.cs" Inherits="AS3_WebApp.WebFormProductMaintenance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderID" runat="server">
    <asp:ScriptManager ID="ScriptManager" runat="server"></asp:ScriptManager>
    <div class="container">
        <asp:UpdatePanel ID="UpdatePanel" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:GridView ID="GridViewProducts" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ProductCode" DataSourceID="TechSupportDataSource" Width="100%" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" ShowFooter="True">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="ProductCode" HeaderText="ProductCode" ReadOnly="True" SortExpression="ProductCode" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Version" HeaderText="Version" SortExpression="Version" />
                        <asp:BoundField DataField="ReleaseDate" DataFormatString="{0:d}" HeaderText="ReleaseDate" SortExpression="ReleaseDate" />
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
                <asp:SqlDataSource ID="TechSupportDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:TechSupportConnectionString %>" DeleteCommand="DELETE FROM [Products] WHERE [ProductCode] = @ProductCode" InsertCommand="INSERT INTO [Products] ([ProductCode], [Name], [Version], [ReleaseDate]) VALUES (@ProductCode, @Name, @Version, @ReleaseDate)" SelectCommand="SELECT [ProductCode], [Name], [Version], [ReleaseDate] FROM [Products]" UpdateCommand="UPDATE [Products] SET [Name] = @Name, [Version] = @Version, [ReleaseDate] = @ReleaseDate WHERE [ProductCode] = @ProductCode">
                    <DeleteParameters>
                        <asp:Parameter Name="ProductCode" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ProductCode" Type="String" />
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Version" Type="Decimal" />
                        <asp:Parameter Name="ReleaseDate" Type="DateTime" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Version" Type="Decimal" />
                        <asp:Parameter Name="ReleaseDate" Type="DateTime" />
                        <asp:Parameter Name="ProductCode" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <div class="form">        
                    <label>Product Code:</label>
                    <asp:TextBox ID="textProductCode" runat="server" CssClass="formTextBox" />
                    <br />

                    <label>Name:</label>
                    <asp:TextBox ID="textName" runat="server" CssClass="formTextBox" />
                    <br />

                    <label>Version:</label>
                    <asp:TextBox ID="textVersion" runat="server" CssClass="formTextBox" />
                    <br />

                    <label>Release Date:</label>
                    <asp:TextBox ID="textReleaseDate" runat="server" CssClass="formTextBox" />
                    <br />

                    <asp:Button ID="buttonAddProduct" runat="server" Text="Add" CssClass="formButton" OnClick="buttonAddProduct_Click" />
                </div>  
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="buttonAddProduct" EventName="Click" />
            </Triggers>
        </asp:UpdatePanel>  
    </div>
</asp:Content>