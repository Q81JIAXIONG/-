<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tryContorller.aspx.cs" Inherits="網頁整合.Try.tryContorller" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server" TextMode="SingleLine"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Time"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Search"></asp:TextBox>
            <asp:TextBox ID="TextBox4" runat="server" TextMode="Week"></asp:TextBox>
            <asp:TextBox ID="TextBox5" runat="server" TextMode="Search"></asp:TextBox>
            <asp:TextBox ID="TextBox6" runat="server" TextMode="Email"></asp:TextBox>
            <asp:TextBox ID="TextBox7" runat="server" TextMode="MultiLine"></asp:TextBox>
            <asp:TextBox ID="TextBox8" runat="server" TextMode="Date"></asp:TextBox>
            <asp:TextBox ID="TextBox9" runat="server" TextMode="Color"></asp:TextBox>
            <asp:TextBox ID="TextBox10" runat="server" TextMode="Phone"></asp:TextBox>

            <asp:Button ID="Button1" runat="server" Text="Button"  />
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/img/youtube.png" />
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="https://www.youtube.com/">LinkButton</asp:LinkButton>

            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:Literal ID="Literal1" Text="Literal" runat="server"></asp:Literal>
            Literal

            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://www.youtube.com/" ImageUrl="~/img/youtube.png">youtube</asp:HyperLink>

            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Selected="True" Value="0">請選擇</asp:ListItem>
                <asp:ListItem Value="A">選項A</asp:ListItem>
                <asp:ListItem Value="B">選項B</asp:ListItem>
            </asp:DropDownList>

            <asp:CheckBox ID="CheckBox1" runat="server" Text="001" />
            <asp:CheckBox ID="CheckBox2" runat="server" Text="002" />

            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="radiobtn" />
            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="radiobtn" />

            <p runat="server" id="p1"></p>
        </div>
    </form>
</body>
</html>
