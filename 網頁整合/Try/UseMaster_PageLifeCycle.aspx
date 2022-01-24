<%@ Page Title="" Language="C#" MasterPageFile="~/Try/LifeCycle.Master" AutoEventWireup="true" CodeBehind="UseMaster_PageLifeCycle.aspx.cs" Inherits="網頁整合.Try.UseMaster_PageLifeCycle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
</asp:Content>
