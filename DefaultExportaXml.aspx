<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DefaultExportaXml.aspx.cs" Inherits="DefaultExportaXml" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


table {
  border-collapse: collapse;
}

  *,
*::before,
*::after {
    text-shadow: none !important;
    box-shadow: none !important;
  }

  *,
*::before,
*::after {
  box-sizing: border-box;
}

th {
  text-align: inherit;
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource10" Font-Bold="False">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" InsertVisible="False" />
                    <asp:BoundField DataField="IdCliente" HeaderText="IdCliente" SortExpression="IdCliente" Visible="False" />
                    <asp:BoundField DataField="IdTipo" HeaderText="IdTipo" SortExpression="IdTipo" />
                    <asp:BoundField DataField="DataCriacao" HeaderText="DataCriacao" SortExpression="DataCriacao" Visible="False" />
                    <asp:BoundField DataField="CnjCartorio" HeaderText="CnjCartorio" SortExpression="CnjCartorio" Visible="False" />
                    <asp:BoundField DataField="CodigoServico" HeaderText="CodigoServico" SortExpression="CodigoServico" Visible="False" />
                    <asp:BoundField DataField="NaturezaDocumento" HeaderText="NaturezaDocumento" SortExpression="NaturezaDocumento" Visible="False" />
                    <asp:BoundField DataField="DataProtocolo" HeaderText="DataProtocolo" SortExpression="DataProtocolo" Visible="False" />
                    <asp:BoundField DataField="NumeroProtocolo" HeaderText="NumeroProtocolo" SortExpression="NumeroProtocolo" Visible="False" />
                    <asp:BoundField DataField="DataAto" HeaderText="DataAto" SortExpression="DataAto" />
                    <asp:BoundField DataField="NumeroAto" HeaderText="NumeroAto" SortExpression="NumeroAto" />
                    <asp:BoundField DataField="Livro" HeaderText="Livro" SortExpression="Livro" />
                    <asp:BoundField DataField="Folha" HeaderText="Folha" SortExpression="Folha" />
                    <asp:BoundField DataField="Publicado" HeaderText="Publicado" SortExpression="Publicado" Visible="False" />
                    <asp:BoundField DataField="DataOcorrencia" HeaderText="DataOcorrencia" SortExpression="DataOcorrencia" Visible="False" />
                    <asp:BoundField DataField="NumeroSelo" HeaderText="NumeroSelo" SortExpression="NumeroSelo" Visible="False" />
                    <asp:BoundField DataField="Matricula" HeaderText="Matricula" SortExpression="Matricula" Visible="False" />
                    <asp:BoundField DataField="TipoLivro" HeaderText="TipoLivro" SortExpression="TipoLivro" />
                    <asp:BoundField DataField="TipoEnvio" HeaderText="TipoEnvio" SortExpression="TipoEnvio" Visible="False" />
                    <asp:BoundField DataField="ProtocoloCEI" HeaderText="ProtocoloCEI" SortExpression="ProtocoloCEI" Visible="False" />
                    <asp:BoundField DataField="DocumentoAnexo" HeaderText="DocumentoAnexo" SortExpression="DocumentoAnexo" Visible="False" />
                    <asp:BoundField DataField="StatusAto" HeaderText="StatusAto" SortExpression="StatusAto" Visible="False" />
                    <asp:BoundField DataField="UsoCartorio" HeaderText="UsoCartorio" SortExpression="UsoCartorio" Visible="False" />
                    <asp:BoundField DataField="Sequencia" HeaderText="Sequencia" SortExpression="Sequencia" Visible="False" />
                    <asp:BoundField DataField="IndicadorReal" HeaderText="IndicadorReal" SortExpression="IndicadorReal" Visible="False" />
                    <asp:BoundField DataField="ExOficio" HeaderText="ExOficio" SortExpression="ExOficio" Visible="False" />
                    <asp:BoundField DataField="ComplementoExOficio" HeaderText="ComplementoExOficio" SortExpression="ComplementoExOficio" Visible="False" />
                    <asp:BoundField DataField="GcStatusRTD" HeaderText="GcStatusRTD" SortExpression="GcStatusRTD" Visible="False" />
                    <asp:BoundField DataField="GcResumoDocumento" HeaderText="GcResumoDocumento" SortExpression="GcResumoDocumento" Visible="False" />
                    <asp:BoundField DataField="GcIdentificacaoEmpresa" HeaderText="GcIdentificacaoEmpresa" SortExpression="GcIdentificacaoEmpresa" Visible="False" />
                    <asp:BoundField DataField="ValorSelo" HeaderText="ValorSelo" SortExpression="ValorSelo" Visible="False" />
                    <asp:BoundField DataField="ValorTransacao" HeaderText="ValorTransacao" SortExpression="ValorTransacao" Visible="False" />
                    <asp:BoundField DataField="ProtestoIndetificacaoTitulo" HeaderText="ProtestoIndetificacaoTitulo" SortExpression="ProtestoIndetificacaoTitulo" Visible="False" />
                    <asp:BoundField DataField="ProtestoStatusTitulo" HeaderText="ProtestoStatusTitulo" SortExpression="ProtestoStatusTitulo" Visible="False" />
                    <asp:BoundField DataField="Arquivo" HeaderText="Arquivo" SortExpression="Arquivo" Visible="False" />
                    <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                    <asp:BoundField DataField="DataNascimento" HeaderText="DataNascimento" SortExpression="DataNascimento" Visible="False" />
                    <asp:BoundField DataField="Natural" HeaderText="Natural" SortExpression="Natural" Visible="False" />
                    <asp:BoundField DataField="UF" HeaderText="UF" SortExpression="UF" Visible="False" />
                    <asp:BoundField DataField="CpfCnpj" HeaderText="CpfCnpj" SortExpression="CpfCnpj" />
                    <asp:BoundField DataField="TipoDaParte" HeaderText="TipoDaParte" SortExpression="TipoDaParte" />
                    <asp:BoundField DataField="Documentos" HeaderText="Documentos" SortExpression="Documentos" Visible="False" />
                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                    <asp:BoundField DataField="Situacao" HeaderText="Situacao" SortExpression="Situacao" />
                    <asp:BoundField DataField="TipoDoLivro" HeaderText="TipoDoLivro" SortExpression="TipoDoLivro" Visible="False" />
                    <asp:BoundField DataField="Sexo" HeaderText="Sexo" SortExpression="Sexo" Visible="False" />
                    <asp:BoundField DataField="Caminho" HeaderText="Caminho" SortExpression="Caminho" Visible="False" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TableXMLEnvioCei11]"></asp:SqlDataSource>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    </div>
    </form>
</body>
</html>
