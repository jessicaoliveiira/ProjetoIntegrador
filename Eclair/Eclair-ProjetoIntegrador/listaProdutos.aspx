<%@ Page Title="" Language="C#" MasterPageFile="~/principal.Master" AutoEventWireup="true" CodeBehind="listaProdutos.aspx.cs" Inherits="WebApplication1.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<asp:GridView runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="idProduto" DataSourceID="SqlDataSource1" Height="357px" Width="733px" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="idProduto" HeaderText="idProduto" InsertVisible="False" ReadOnly="True" SortExpression="idProduto" />
        <asp:BoundField DataField="nomeProduto" HeaderText="nomeProduto" SortExpression="nomeProduto" />
        <asp:BoundField DataField="descProduto" HeaderText="descProduto" SortExpression="descProduto" >
        </asp:BoundField>
        <asp:BoundField DataField="precProduto" HeaderText="precProduto" SortExpression="precProduto" >
        </asp:BoundField>
        <asp:BoundField DataField="qtdMinEstoque" HeaderText="qtdMinEstoque" SortExpression="qtdMinEstoque" />
    </Columns>
    <EditRowStyle BackColor="#2461BF" />
    <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EclairConnectionString %>" SelectCommand="SELECT [idProduto], [nomeProduto], [descProduto], [precProduto], [qtdMinEstoque] FROM [Produto]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Produto] WHERE [idProduto] = @original_idProduto AND [nomeProduto] = @original_nomeProduto AND (([descProduto] = @original_descProduto) OR ([descProduto] IS NULL AND @original_descProduto IS NULL)) AND [precProduto] = @original_precProduto AND (([qtdMinEstoque] = @original_qtdMinEstoque) OR ([qtdMinEstoque] IS NULL AND @original_qtdMinEstoque IS NULL))" InsertCommand="INSERT INTO [Produto] ([nomeProduto], [descProduto], [precProduto], [qtdMinEstoque]) VALUES (@nomeProduto, @descProduto, @precProduto, @qtdMinEstoque)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Produto] SET [nomeProduto] = @nomeProduto, [descProduto] = @descProduto, [precProduto] = @precProduto, [qtdMinEstoque] = @qtdMinEstoque WHERE [idProduto] = @original_idProduto AND [nomeProduto] = @original_nomeProduto AND (([descProduto] = @original_descProduto) OR ([descProduto] IS NULL AND @original_descProduto IS NULL)) AND [precProduto] = @original_precProduto AND (([qtdMinEstoque] = @original_qtdMinEstoque) OR ([qtdMinEstoque] IS NULL AND @original_qtdMinEstoque IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_idProduto" Type="Int32" />
            <asp:Parameter Name="original_nomeProduto" Type="String" />
            <asp:Parameter Name="original_descProduto" Type="String" />
            <asp:Parameter Name="original_precProduto" Type="Decimal" />
            <asp:Parameter Name="original_qtdMinEstoque" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="nomeProduto" Type="String" />
            <asp:Parameter Name="descProduto" Type="String" />
            <asp:Parameter Name="precProduto" Type="Decimal" />
            <asp:Parameter Name="qtdMinEstoque" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nomeProduto" Type="String" />
            <asp:Parameter Name="descProduto" Type="String" />
            <asp:Parameter Name="precProduto" Type="Decimal" />
            <asp:Parameter Name="qtdMinEstoque" Type="Int32" />
            <asp:Parameter Name="original_idProduto" Type="Int32" />
            <asp:Parameter Name="original_nomeProduto" Type="String" />
            <asp:Parameter Name="original_descProduto" Type="String" />
            <asp:Parameter Name="original_precProduto" Type="Decimal" />
            <asp:Parameter Name="original_qtdMinEstoque" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


</asp:Content>
