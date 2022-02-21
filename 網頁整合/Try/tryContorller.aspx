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
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" DataSourceID="SqlDataSource_Sex" DataTextField="Sex" DataValueField="SexID"></asp:RadioButtonList>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource_Education" DataTextField="Education" DataValueField="EducationID"></asp:DropDownList>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="SqlDataSource_PL" DataTextField="language" DataValueField="PLID"></asp:CheckBoxList>
            <asp:SqlDataSource ID="SqlDataSource_Sex" runat="server" ConnectionString="<%$ ConnectionStrings:網頁整合DBConnectionString %>" SelectCommand="SELECT * FROM [Sex]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource_Education" runat="server" ConnectionString="<%$ ConnectionStrings:網頁整合DBConnectionString %>" SelectCommand="SELECT * FROM [Education]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource_PL" runat="server" ConnectionString="<%$ ConnectionStrings:網頁整合DBConnectionString %>" SelectCommand="SELECT * FROM [ProgrammingLanguage]"></asp:SqlDataSource>

            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
