<%@ Page Title="" Language="C#" MasterPageFile="~/Master/General.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="網頁整合.Authentication.Login" %>
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
        .login-box h3 {
            font-size:46px;
            color:#ffff00;
            text-align:center;
            margin:50px 0px;
        }
        .input {
            text-align:center;
            font-size:30px;
            margin:10px;
            color:#ffffff;
        }
        .textbox {
            font-size:30px;
            background-color:#aaaaaa;
            margin:30px 0px;
        }
        .submit {
            background-color:burlywood;
            margin:auto;
            font-size:30px;
            margin:30px 0px;
        }
        .other a{
            color:aliceblue;
            text-decoration:none;
        }
        .other a:hover{
            background-color:aliceblue;
            color:#222222;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrap">
        <div class="login-box">
            <h3>登入</h3>
            <div class="acc input">
                帳號：<asp:TextBox ID="account" runat="server" TextMode="SingleLine" CssClass="accinput textbox"></asp:TextBox>
            </div>
            <div class="pw  input">
                密碼：<asp:TextBox ID="password" runat="server" TextMode="Password" CssClass="pwinput textbox"></asp:TextBox>
            </div>
        
            <div class="input">
                <asp:Button ID="Button1" runat="server" Text="登入" OnClick="Button1_Click" CssClass="submit" />
            </div>
            
            <div class="input other">
                <a href="Register.aspx">帳號註冊</a>
                <a href="#">忘記密碼</a>
            </div>
        </div>
    </div>
</asp:Content>
