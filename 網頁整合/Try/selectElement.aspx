<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="selectElement.aspx.cs" Inherits="網頁整合.Try.selectElement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="wrap">
            <div id="box1" class="box">1</div>
            <div id="box2" class="box">2</div>
            <div id="box3" class="box">3</div>
        </div>
    </form>

    <script>
        var wrap = document.querySelector('#wrap');
        var boxs = wrap.querySelectorAll('.box');

        console.log(boxs.length);

        for (let i = 4; i <= 5; i++) {
            let div = document.createElement('div');
            div.id = 'box' + i.toString();
            div.classList.add('box');
            div.textContent = i.toString();

            wrap.appendChild(div)
        }
        console.log(boxs.length);

        function plus(val1,val2) {
            return val1 + val2;
        }
    </script>
</body>
</html>
