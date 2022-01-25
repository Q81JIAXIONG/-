<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CSSInternalStyles.aspx.cs" Inherits="網頁整合.Try.CSSInternalStyles" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        a {
            text-decoration:none
        }
        .red {
            color:red; 
        }
        .blue {
            color:blue; 
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <a class="red" href="https://www.youtube.com/">youtube</a>

            <a class="blue" href="https://zh-tw.facebook.com/">facebook</a>
        </div>
    </form>
</body>
</html>
