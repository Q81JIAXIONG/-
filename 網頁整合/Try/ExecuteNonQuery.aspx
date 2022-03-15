<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExecuteNonQuery.aspx.cs" Inherits="網頁整合.Try.ExecuteNonQuery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Literal ID="Literal1" runat="server"></asp:Literal>
            <hr />

            <asp:Label ID="Label1" runat="server" Text="語言代號:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="語言名稱:"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

            <asp:Button ID="新增" runat="server" Text="Button" OnClick="新增_Click" />
        </div>
    </form>
</body>
</html>
