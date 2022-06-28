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
                    <asp:TextBox ID="account" runat="server" TextMode="SingleLine" CssClass="account"></asp:TextBox>
                </div>
                <div>
                    <h5>姓名</h5>
                    <asp:TextBox ID="name" runat="server" TextMode="SingleLine" CssClass="name"></asp:TextBox>
                </div>
            </div>
            <div class="input-row">
                <div>
                    <h5>信箱</h5>
                    <asp:TextBox ID="email" runat="server" TextMode="Email" CssClass="Email"></asp:TextBox>
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
                    <asp:TextBox ID="password" runat="server" TextMode="Password" CssClass="password"></asp:TextBox>
                </div>
                <div>
                    <h5>重新輸入密碼</h5>
                    <asp:TextBox ID="repassword" runat="server" TextMode="Password" CssClass="repassword"></asp:TextBox>
                </div>
            </div>

            <div class="input-row">
                <asp:Button ID="Button1" runat="server" Text="送出" CssClass="submit" OnClick="Button1_Click"  OnClientClick="return checkdata()"/>
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

    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <script>
        function checkdata() {
            let account = document.querySelector('.account');
            let name = document.querySelector('.name');
            let Email = document.querySelector('.Email');
            let password = document.querySelector('.password');
            let repassword = document.querySelector('.repassword');

            const accountCheckStr = /^[a-zA-Z0-9]{6,20}$/;
            const emailCheckStr = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z]+$/;
            const passwordCheckStr = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,30}$/;

            let re = ''

            if (!accountCheckStr.test(account.value)) {
                re += '帳號必須英文或數字且6~20字元 <br>'
            }
            if (name.value.length < 3 || name.value.length > 20) {
                re += '姓名字數要在3~20字 <br>'
            }

            if (!emailCheckStr.test(Email.value)) {
                re += 'email格式有誤 <br>'
            }
            if (Email.value.length > 20) {
                re += 'email字數要在20字元以內 <br>'
            }

            if (!passwordCheckStr.test(password.value)) {
                re += '密碼必須至少1個數字、一個小寫英文字、一個大些英文字及長度要在8~30個字元 <br>'
            }
            if (password.value !== repassword.value) {
                re += '密碼與重新輸入密碼不一致 <br>'
            }

            if (re.length !== 0) {
                Swal.fire({
                    icon: 'error',
                    title: '輸入資料不正確',
                    html: re
                })
            }

            return re === '';
        }

        //let account = document.querySelector('.account');
        //let name = document.querySelector('.name');
        //let Sex = document.querySelector('.repassword');
        //let Email = document.querySelector('.Email');
        //let password = document.querySelector('.password');
        //let repassword = document.querySelector('.repassword');

        //const accountCheckStr = /^[a-zA-Z0-9]{6,20}$/;
        //const emailCheckStr = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z]+$/;
        //const passwordCheckStr = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,30}$/;

        //let re = ''

        //if (!accountCheckStr.test(account.value)) {
        //    re += '帳號必須英文或數字且6~20字元 '
        //}
        //if (name.value.length < 3 || name.value.length > 20) {
        //    re += '姓名字數要在3~20字  '
        //}

        //if (!emailCheckStr.test(Email.value)) {
        //    re += 'email格式有誤 '
        //}
        //if (Email.value.length > 20) {
        //    re += 'email字數要在20字元以內 '
        //}

        //if (!passwordCheckStr.test(password.value)) {
        //    re += '密碼必須至少1個數字、一個小寫英文字、一個大些英文字及長度要在8~30個字元 '
        //}
        //if (password.value !== repassword.value) {
        //    re += '密碼與重新輸入密碼不一致 '
        //}

        //if (re.length !== 0) {
        //    Swal.fire({
        //        icon: 'error',
        //        title: '輸入資料不正確',
        //        text: re
        //    })
        //}



        //return re.length === 0
    </script>
</asp:Content>
