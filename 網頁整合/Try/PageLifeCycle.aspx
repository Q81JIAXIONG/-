﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PageLifeCycle.aspx.cs" Inherits="網頁整合.Try.PageLifeCycle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
             <%= "razor" %>
        </div>
    </form>
</body>
</html>
