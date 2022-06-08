<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="jsEvent.aspx.cs" Inherits="網頁整合.Try.jsEvent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClientClick="return clickfunction()"/>
        </div>
    </form>

    <script>
        function clickfunction() {
            return confirm('確定送出嗎');
        }
    </script>
</body>
</html>
