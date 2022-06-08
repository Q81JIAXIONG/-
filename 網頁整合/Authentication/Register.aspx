<%@ Page Title="" Language="C#" MasterPageFile="~/Master/General.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="網頁整合.Authentication.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .wrap {
            background: linear-gradient(to bottom, #005555, #000000);
            position: absolute;
            width: 100%;
            top: 126px;
            bottom: 0px;
        }
        .input-box {
            position: absolute;
            top: 0;
            left: 0;
            bottom: 0;
            right: 0;
            margin: auto;
            height: 600px;
            width: 500px;
            background-color: aliceblue;
            display: flex;
            flex-wrap: wrap;
        }
        .input-row {
            width: 100%;
            display: flex;
            justify-content: space-around;
            align-items: center;
        }
        .input-row div > * {
            margin: 2px 20px;
        }
        .input-row h1 {
            color: brown;
            font-size: 32px;
            font-weight: bold;
        }
        .input-row > div {
            width: 50%;
        }
        .input-row div > input, 
        .input-row div > select {
            width: 210px;
            box-sizing: border-box;
            font-size: 20px;
            background-color:aliceblue;
        }

        tbody {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between
        }
        h5 {
            font-size: 20px;
        }
        .textbox {
            font-size: 30px;
            background-color: #aaaaaa;
            margin: 30px 0px;
        }
        .submit {
            width: 100%;
            margin: 0px 20px;
            background-color:mediumslateblue;
            font-size:28px;
            color:#fff;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="wrap">
        <div class="input-box">
            <div class="input-row">
                <h1>註冊</h1>
            </div>
            <div class="input-row">
                <div>
                    <h5>帳號</h5>
                    <asp:TextBox ID="account" runat="server" TextMode="SingleLine"></asp:TextBox>
                </div>
                <div>
                    <h5>姓名</h5>
                    <asp:TextBox ID="name" runat="server" TextMode="SingleLine"></asp:TextBox>
                </div>
            </div>
            <div class="input-row">
                <div>
                    <h5>信箱</h5>
                    <asp:TextBox ID="email" runat="server" TextMode="Email"></asp:TextBox>
                </div>
                <div>
                    <h5>學歷</h5>
                    <asp:DropDownList ID="educationDropDownList" runat="server"
                        DataSourceID="SqlDataSource2" DataTextField="Education" 
                        DataValueField="EducationID"></asp:DropDownList>
                </div>
            </div>
            <div class="input-row">
                <div>
                    <h5>性別</h5>
                    <asp:RadioButtonList ID="sexRadioButtonList" runat="server" 
                        DataSourceID="SqlDataSource1" DataTextField="Sex" 
                        DataValueField="SexID"></asp:RadioButtonList>
                </div>

                <div>
                    <h5>擅長程式語言</h5>
                    <asp:CheckBoxList ID="LanguageCheckBoxList" runat="server"
                        DataSourceID="SqlDataSource3" DataTextField="language"
                        DataValueField="PLID"></asp:CheckBoxList>
                </div>
            </div>
            <div class="input-row">
                <div>
                    <h5>密碼</h5>
                    <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
                </div>
                <div>
                    <h5>重新輸入密碼</h5>
                    <asp:TextBox ID="repassword" runat="server" TextMode="Password"></asp:TextBox>
                </div>
            </div>

            <div class="input-row">
                <asp:Button ID="Button1" runat="server" Text="送出" CssClass="submit" OnClick="Button1_Click"  OnClientClick="return checkdate()"/>
            </div>
        </div>
    </div>


    <asp:SqlDataSource
        ID="SqlDataSource2"
        runat="server"
        ConnectionString="<%$ ConnectionStrings:網頁整合DBConnectionString %>"
        SelectCommand="SELECT * FROM [Education]"></asp:SqlDataSource>
    <asp:SqlDataSource
        ID="SqlDataSource1"
        runat="server" ConnectionString="<%$ 
                        ConnectionStrings:網頁整合DBConnectionString %>"
        SelectCommand="SELECT * FROM [Sex]"></asp:SqlDataSource>
    <asp:SqlDataSource
        ID="SqlDataSource3"
        runat="server"
        ConnectionString="<%$ ConnectionStrings:網頁整合DBConnectionString %>"
        SelectCommand="SELECT * FROM [ProgrammingLanguage]"></asp:SqlDataSource>

    <script>
        function checkdate() {
            console.log('檢查')
            return true
        }
    </script>
</asp:Content>
