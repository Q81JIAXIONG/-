<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CSSInternalStyles2.aspx.cs" Inherits="網頁整合.Try.CSSInternalStyles2" %>

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
                <asp:LinkButton ID="youtube" href="https://www.youtube.com/" runat="server" CssClass="red">YouTube</asp:LinkButton>
            </div>
            <div>
                <asp:LinkButton ID="facebook" href="https://www.youtube.com/" runat="server" CssClass="blue">Facebook</asp:LinkButton>
            </div>
            <div>
                <asp:LinkButton ID="line" href="https://www.youtube.com/" runat="server" CssClass="green">LINE</asp:LinkButton>
            </div>   
            <asp:Button Text="顏色機換" runat="server" OnClick="Unnamed1_Click" />
        </div>
    </form>
</body>
</html>
