<%@ Page Title="" Language="C#" MasterPageFile="~/Marster/marster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="網頁整合.Authentication.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>登入</h1>
    <div>
        <div>
            帳號:<asp:TextBox ID="account" runat="server" TextMode="SingleLine"></asp:TextBox>
        </div>
        <div>
            密碼:<asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
        </div>
        
        <asp:Button ID="Button1" runat="server" Text="確定" OnClick="Button1_Click" />
        <a href="Register.aspx">註冊</a>
    </div>
</asp:Content>
