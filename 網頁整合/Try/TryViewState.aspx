<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TryViewState.aspx.cs" Inherits="網頁整合.Try.ViewState" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br/>
                <asp:Button ID="Button1" runat="server" Text="存入ViewState資料" OnClick="Button1_Click" />
            </div>
            
            <div>
                <asp:Literal ID="Literal1" runat="server" Text="目前ViewState資料為:" Visible="False"></asp:Literal>
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                <br/>
                <asp:Button ID="Button2" runat="server" Text="輸出ViewState資料" OnClick="Button2_Click" />
            </div>
        </div>
    </form>
</body>
</html>
