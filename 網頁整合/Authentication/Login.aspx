<%@ Page Title="" Language="C#" MasterPageFile="~/Marster/marster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="網頁整合.Authentication.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .wrap {
            background-image:url("../img/loginbgimg.jpg");
            background-size:100% 100%;
            position:absolute;
            width:100%;       
            top:126px;
            bottom:0px;
        }
        .login-box {
            position: absolute;
	        top: 0;
	        left: 0;
	        bottom: 0;
	        right: 0;
            margin: auto;
            width:600px;
            height:600px;
            backdrop-filter:blur(5px) brightness(60%);
        }


    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrap">
        <div class="login-box">
            <div class="acc">
                帳號:<asp:TextBox ID="account" runat="server" TextMode="SingleLine"></asp:TextBox>
            </div>
            <div>
                密碼:<asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
            </div>
        
            <asp:Button ID="Button1" runat="server" Text="確定" OnClick="Button1_Click" />
            <a href="Register.aspx">註冊</a>
        </div>
    </div>
</asp:Content>
