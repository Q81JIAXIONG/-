<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CSSInternalStyles.aspx.cs" Inherits="網頁整合.Try.CSSInternalStyles" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        a {
            text-decoration:none;
            font-size:50px;
        }
        .red {
            color:red; 
        }
        .blue {
            color:blue; 
        }
        .green {
            color:green; 
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <a class="red" href="https://www.youtube.com/">YouTube</a>
            </div>
            <div>
                <a class="blue" href="https://zh-tw.facebook.com/">Facebook</a>
            </div>
            <div>
                <a class="green" href="https://line.me/zh-hant/">LINE</a>
            </div>   
            <input type="button" id="btn" value="顏色交換" />
        </div>
    </form>

    <script>
        var btn = document.querySelector('#btn');
        var index = 1;

        var chengeColor = function () {
            var colors = ['red', 'blue', 'green'];
            var as = document.querySelectorAll('a');
            for (var i = 0; i < as.length; i++) {
                as[i].classList = [];
                as[i].classList.add(colors[(i + index) % 3])
            }
            index++;
        }
        btn.addEventListener('click', chengeColor)
    </script>
</body>
</html>
