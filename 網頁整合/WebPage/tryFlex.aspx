<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tryFlex.aspx.cs" Inherits="網頁整合.WebPage.tryFlex" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        .container {
            height:100px;
            padding:50px;
            border:blue 2px solid;

            display:flex;
            justify-content:center;
            align-items:center;
            flex-wrap:wrap;
        }
        .item {
            padding:10px;
            border:#000 2px solid;
            width:600px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class ="container">
            <div class="item">aaa</div>
            <div class="item">bbb</div>
            <div class="item">ccc</div>
            <div class="item">ddd</div>
            <div class="item">eee</div>
        </div>
    </form>
</body>
</html>
