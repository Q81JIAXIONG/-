<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dataSource.aspx.cs" Inherits="網頁整合.Try.dataSource" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList 
                ID="DropDownList1" 
                runat="server" 
                DataSourceID="SqlDataSource1"
                DataTextField="Education" 
                DataValueField="EducationID">
            </asp:DropDownList>

            <asp:CheckBoxList 
                ID="CheckBoxList1" 
                runat="server" 
                DataSourceID="SqlDataSource2" 
                DataTextField="language" 
                DataValueField="PLID">
            </asp:CheckBoxList>

            <asp:RadioButtonList ID="RadioButtonList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="Sex" DataValueField="SexID"></asp:RadioButtonList>

            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:網頁整合DBConnectionString %>" SelectCommand="SELECT * FROM [Sex]"></asp:SqlDataSource>

            <asp:SqlDataSource 
                ID="SqlDataSource2" 
                runat="server" 
                ConnectionString="<%$ ConnectionStrings:網頁整合DBConnectionString %>" 
                SelectCommand="SELECT * FROM [ProgrammingLanguage]">
            </asp:SqlDataSource>

            <asp:SqlDataSource 
                ID="SqlDataSource1" 
                runat="server" 
                ConnectionString="<%$ ConnectionStrings:網頁整合DBConnectionString %>" 
                SelectCommand="SELECT * FROM [Education]">
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
