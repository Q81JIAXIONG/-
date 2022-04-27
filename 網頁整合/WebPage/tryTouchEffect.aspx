<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tryTouchEffect.aspx.cs" Inherits="網頁整合.WebPage.tryTouchEffect" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        .box {
          width: 100px;
          height: 100px;
          background: red;
          transition: width 2s,height 2s 2s,background 2s;
        }

        .box:hover {
          width: 300px;
          height: 300px;
          background: green;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="box">
        </div>
    </form>
</body>
</html>
