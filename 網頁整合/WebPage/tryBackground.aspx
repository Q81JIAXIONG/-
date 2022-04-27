<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tryBackground.aspx.cs" Inherits="網頁整合.WebPage.tryBackground" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        body {
            margin:0;
        }
        .bg {
            width:100%;
            height:100vh;
            /*background-color:#F00;*/
            /*background-image:url(https://image.cache.storm.mg/styles/smg-800x533-fp/s3/media/image/2020/11/07/20201107-092915_U13380_M651499_4ac4.jpg?itok=6KFZde7p);*/
            background-image:linear-gradient(to bottom, rgb(255,255,0), rgb(0,0,255));
            background-size:100% 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="bg">
        </div>
    </form>
</body>
</html>
