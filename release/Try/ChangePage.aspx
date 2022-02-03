<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePage.aspx.cs" Inherits="網頁整合.Try.ChangePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="還沒選擇"></asp:Label>
            <asp:Button ID="Button1" runat="server" Text="選一" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="選二" OnClick="Button2_Click" />
        </div>
    </form>
</body>
</html>
