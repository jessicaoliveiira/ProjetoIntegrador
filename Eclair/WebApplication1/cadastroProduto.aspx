<%@ Page Title="" Language="C#" MasterPageFile="~/principal.Master" AutoEventWireup="true" CodeBehind="cadastroProduto.aspx.cs" Inherits="WebApplication1.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <asp:Label ID="lblNome" runat="server" Text="Nome"></asp:Label>
    <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>


    <br />


    <asp:Label ID="lblDesc" runat="server" Text="Descricao"></asp:Label>
    <asp:TextBox ID="txtDesc" runat="server"></asp:TextBox>


    <br />


    <asp:Label ID="lblPreco" runat="server" Text="Preco"></asp:Label>
    <asp:TextBox ID="txtPreco" runat="server"></asp:TextBox>


    <br />


    <asp:Label ID="lblDesco" runat="server" Text="Descon"></asp:Label>
    <asp:TextBox ID="txtDescon" runat="server" Width="207px"></asp:TextBox>

    <br />

    <asp:Label ID="lblQuant" runat="server" Text="Quant"></asp:Label>
    <asp:TextBox ID="txtQuant" runat="server"></asp:TextBox>


    <br />


    <asp:Label ID="lblCatego" runat="server" Text="Categoria"></asp:Label>
    <asp:DropDownList ID="ddlCateg" runat="server" DataSourceID="SqlDataSource2" DataTextField="nomeCategoria" DataValueField="idCategoria"></asp:DropDownList>


    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EclairConnectionString %>" SelectCommand="SELECT [idCategoria], [nomeCategoria] FROM [Categoria]"></asp:SqlDataSource>
    <br />


    <asp:Label ID="ativo" runat="server" Text="ativo"></asp:Label>
     <asp:DropDownList ID="ddlAtivo" runat="server">
         <asp:ListItem Value="1">sim</asp:ListItem>
         <asp:ListItem Value="0">nao</asp:ListItem>
    </asp:DropDownList>

    <asp:Button ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click" Width="275px" />
    <br />
    <asp:Label ID="lblMensag" runat="server" Text=""></asp:Label>
  




   


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:EclairConnectionString %>" DeleteCommand="DELETE FROM [Produto] WHERE [idProduto] = @original_idProduto AND [nomeProduto] = @original_nomeProduto AND [precProduto] = @original_precProduto AND (([descProduto] = @original_descProduto) OR ([descProduto] IS NULL AND @original_descProduto IS NULL)) AND (([descontoPromocao] = @original_descontoPromocao) OR ([descontoPromocao] IS NULL AND @original_descontoPromocao IS NULL)) AND [idCategoria] = @original_idCategoria AND [ativoProduto] = @original_ativoProduto AND (([qtdMinEstoque] = @original_qtdMinEstoque) OR ([qtdMinEstoque] IS NULL AND @original_qtdMinEstoque IS NULL))" InsertCommand="INSERT INTO [Produto] ([nomeProduto], [precProduto], [descProduto], [descontoPromocao], [idCategoria], [ativoProduto], [qtdMinEstoque]) VALUES (@nomeProduto, @precProduto, @descProduto, @descontoPromocao, @idCategoria, @ativoProduto, @qtdMinEstoque)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [idProduto], [nomeProduto], [precProduto], [descProduto], [descontoPromocao], [idCategoria], [ativoProduto], [qtdMinEstoque] FROM [Produto]" UpdateCommand="UPDATE [Produto] SET [nomeProduto] = @nomeProduto, [precProduto] = @precProduto, [descProduto] = @descProduto, [descontoPromocao] = @descontoPromocao, [idCategoria] = @idCategoria, [ativoProduto] = @ativoProduto, [qtdMinEstoque] = @qtdMinEstoque WHERE [idProduto] = @original_idProduto AND [nomeProduto] = @original_nomeProduto AND [precProduto] = @original_precProduto AND (([descProduto] = @original_descProduto) OR ([descProduto] IS NULL AND @original_descProduto IS NULL)) AND (([descontoPromocao] = @original_descontoPromocao) OR ([descontoPromocao] IS NULL AND @original_descontoPromocao IS NULL)) AND [idCategoria] = @original_idCategoria AND [ativoProduto] = @original_ativoProduto AND (([qtdMinEstoque] = @original_qtdMinEstoque) OR ([qtdMinEstoque] IS NULL AND @original_qtdMinEstoque IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_idProduto" Type="Int32" />
            <asp:Parameter Name="original_nomeProduto" Type="String" />
            <asp:Parameter Name="original_precProduto" Type="Decimal" />
            <asp:Parameter Name="original_descProduto" Type="String" />
            <asp:Parameter Name="original_descontoPromocao" Type="Decimal" />
            <asp:Parameter Name="original_idCategoria" Type="Int32" />
            <asp:Parameter Name="original_ativoProduto" Type="String" />
            <asp:Parameter Name="original_qtdMinEstoque" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="txtNome" Name="nomeProduto" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtPreco" Name="precProduto" PropertyName="Text" Type="Decimal" />
            <asp:ControlParameter ControlID="txtDesc" Name="descProduto" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="txtDescon" Name="descontoPromocao" PropertyName="Text" Type="Decimal" />
            <asp:ControlParameter Name="idCategoria" Type="Int32" />
            <asp:ControlParameter ControlID="ddlAtivo" Name="ativoProduto" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="txtQuant" Name="qtdMinEstoque" PropertyName="Text" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nomeProduto" Type="String" />
            <asp:Parameter Name="precProduto" Type="Decimal" />
            <asp:Parameter Name="descProduto" Type="String" />
            <asp:Parameter Name="descontoPromocao" Type="Decimal" />
            <asp:Parameter Name="idCategoria" Type="Int32" />
            <asp:Parameter Name="ativoProduto" Type="String" />
            <asp:Parameter Name="qtdMinEstoque" Type="Int32" />
            <asp:Parameter Name="original_idProduto" Type="Int32" />
            <asp:Parameter Name="original_nomeProduto" Type="String" />
            <asp:Parameter Name="original_precProduto" Type="Decimal" />
            <asp:Parameter Name="original_descProduto" Type="String" />
            <asp:Parameter Name="original_descontoPromocao" Type="Decimal" />
            <asp:Parameter Name="original_idCategoria" Type="Int32" />
            <asp:Parameter Name="original_ativoProduto" Type="String" />
            <asp:Parameter Name="original_qtdMinEstoque" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


</asp:Content>
