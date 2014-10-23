<%@ Page Title="" Language="C#" MasterPageFile="~/principal.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication1.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <center>
    <h1>logo Eclair</h1>


    <div id="box-login">

    <div><asp:Label ID="lblLogin" runat="server" Text="Login:"></asp:Label></div>
    <div><asp:TextBox ID="txtLogin" runat="server"></asp:TextBox></div>
    </div>

    </center>

</asp:Content>
