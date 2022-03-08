<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridView.aspx.cs" Inherits="網頁整合.Try.GridView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="PLID" DataSourceID="SqlDataSource1" PageSize="3" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="PLID" HeaderText="PLID" ReadOnly="True" SortExpression="PLID" />
                    <asp:BoundField DataField="language" HeaderText="language" SortExpression="language" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BorderStyle="Double" BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" BorderStyle="Ridge" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:網頁整合DBConnectionString %>" DeleteCommand="DELETE FROM [ProgrammingLanguage] WHERE [PLID] = @PLID" InsertCommand="INSERT INTO [ProgrammingLanguage] ([PLID], [language]) VALUES (@PLID, @language)" SelectCommand="SELECT * FROM [ProgrammingLanguage]" UpdateCommand="UPDATE [ProgrammingLanguage] SET [language] = @language WHERE [PLID] = @PLID">
                <DeleteParameters>
                    <asp:Parameter Name="PLID" Type="Byte" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="PLID" Type="Byte" />
                    <asp:Parameter Name="language" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="language" Type="String" />
                    <asp:Parameter Name="PLID" Type="Byte" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
