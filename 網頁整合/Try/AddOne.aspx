<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddOne.aspx.cs" Inherits="網頁整合.AddOne" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" UseSubmitBehavior="False" />
        </div>
        <asp:HyperLink ID="HyperLink1" runat="server">HyperLink</asp:HyperLink>
    </form>
</body>
</html>
