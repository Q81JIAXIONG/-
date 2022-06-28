<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tryGetDOM.aspx.cs" Inherits="網頁整合.Try.tryGetDOM" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="wrap">
            <input type="button" name="name" value="" onclick="aaa()"/>
        </div>
    </form>

    <script>
        function aaa() {
            alert('點擊按鈕')
        }
    </script>
</body>
</html>
