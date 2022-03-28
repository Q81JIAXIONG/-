<%@ Page Title="" Language="C#" MasterPageFile="~/Marster/marster.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="網頁整合.Authentication.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>註冊</h1>
    <div>
        <div>
            帳號:<asp:TextBox ID="account" runat="server" TextMode="SingleLine"></asp:TextBox>
        </div>
        <div>
            姓名:<asp:TextBox ID="name" runat="server" TextMode="SingleLine"></asp:TextBox>
        </div>
        <div>
            性別:<asp:RadioButtonList ID="sexRadioButtonList" runat="server" DataSourceID="SqlDataSource1" DataTextField="Sex" DataValueField="SexID"></asp:RadioButtonList>
            <asp:SqlDataSource 
                ID="SqlDataSource1" 
                runat="server" ConnectionString="<%$ 
                ConnectionStrings:網頁整合DBConnectionString %>" 
                SelectCommand="SELECT * FROM [Sex]">
            </asp:SqlDataSource>
        </div>
        <div>
            信箱:<asp:TextBox ID="email" runat="server" TextMode="Email"></asp:TextBox>
        </div>
        <div>
            學歷:<asp:DropDownList ID="educationDropDownList" runat="server" DataSourceID="SqlDataSource2" DataTextField="Education" DataValueField="EducationID"></asp:DropDownList>
            <asp:SqlDataSource 
                ID="SqlDataSource2" 
                runat="server" 
                ConnectionString="<%$ ConnectionStrings:網頁整合DBConnectionString %>" 
                SelectCommand="SELECT * FROM [Education]">
            </asp:SqlDataSource>
        </div>
        <div>
            擅長程式語言:<asp:CheckBoxList ID="LanguageCheckBoxList" runat="server" DataSourceID="SqlDataSource3" DataTextField="language" DataValueField="PLID"></asp:CheckBoxList>
            <asp:SqlDataSource 
                ID="SqlDataSource3" 
                runat="server" 
                ConnectionString="<%$ ConnectionStrings:網頁整合DBConnectionString %>" 
                SelectCommand="SELECT * FROM [ProgrammingLanguage]">
            </asp:SqlDataSource>
        </div>
        <div>
            密碼:<asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            重新輸入密碼:<asp:TextBox ID="repassword" runat="server" TextMode="Password"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="Button1" runat="server" Text="送出" OnClick="Button1_Click" />
        </div>
    </div>
</asp:Content>
