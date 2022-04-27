<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tryFontStyle.aspx.cs" Inherits="網頁整合.WebPage.tryFontStyle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <style>
        .a {
            font-size:30px;
            color:red;
            text-decoration:none;
            text-align:right;
        }
        a {
             text-decoration:none;
             color:red;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="a">
            <a href="#">超連結</a>
            <p>段落</p>
            文字
        </div>
    </form>
</body>
</html>
