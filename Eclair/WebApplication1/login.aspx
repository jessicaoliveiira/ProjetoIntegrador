<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication1.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Eclair</title>
</head>
<link href="style.css" rel="stylesheet" />
<link href="css/bootstrap.css" rel="stylesheet" />
<link href="css/bootstrap-responsive.css" rel="stylesheet" />
<body>
    <form id="form1" runat="server">


	          <div class="conteudoLogin">
                  
                       <center><img src="images/logo.png" alt="" class="logo" /></center>

                    <div id="login">
                 <div><asp:Label ID="Label1" runat="server" Text="Nome de Usuario:"></asp:Label></div>
                 <div><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></div>
                           <div><asp:Label ID="Label2" runat="server" Text="Senha:"></asp:Label></div>
                 <div><asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox></div>
                 <div> <asp:Button ID="btnNovo" runat="server" CssClass="bottomNovo" Text="Novo Usuario" />  <asp:Button ID="btnLogin" runat="server" CssClass="bottomLogin" Text="Login" /> </div> 

                    </div>



	          </div>


    </form>
</body>
</html>
