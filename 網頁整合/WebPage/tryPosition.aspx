<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tryPosition.aspx.cs" Inherits="網頁整合.WebPage.tryPosition" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <style>
        .A,.B,.C {
            border:red solid 3px;
            padding:50px;
        }

        .B {
            position:relative;
        }
        .C {
            position:absolute;
            border:blue solid 3px;
            padding:30px;
            right:0;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="A">
                A
                <div class="B">
                    B
                    <div class="C">
                        C
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
