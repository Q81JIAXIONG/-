<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tryContorller.aspx.cs" Inherits="網頁整合.Try.tryContorller" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p runat="server" id="p1"></p>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1"></asp:DropDownList>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server"></asp:CheckBoxList>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server"></asp:RadioButtonList>
            <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px"></asp:DetailsView>
        </div>
    </form>
</body>
</html>
