<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DigitalComputing.aspx.cs" Inherits="網頁整合.Try.DigitalComputing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="number1" runat="server"></asp:TextBox>
            <asp:DropDownList ID="operatorDDL" runat="server">
                <asp:ListItem Selected="True">+</asp:ListItem>
                <asp:ListItem>-</asp:ListItem>
                <asp:ListItem>*</asp:ListItem>
                <asp:ListItem>/</asp:ListItem>
            </asp:DropDownList>
            <asp:TextBox ID="number2" runat="server"></asp:TextBox>
            <asp:Literal ID="equal" runat="server" Text=""></asp:Literal>
            <asp:Label ID="result" runat="server" Text=""></asp:Label>
        </div>
        <asp:Button ID="calculate" runat="server" Text="計算" OnClick="calculate_Click" />
    </form>
</body>
</html>
