using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class DefaultExportaXml : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string folder = @"C:\Indoc Gerenciamentos\";
        //Se o diretório não existir...
        //+ Cliente + "\\" + DropDownListDescricaoLivro + "\\" + DropDownListLivro

        if (!Directory.Exists(folder))
        {

            //Criamos um com o nome folder
            Directory.CreateDirectory(folder);

        }

        for (int i = 0; i < GridView1.Rows.Count; i++)
        {



            try
            {
                
               
                    XmlTextWriter writer = new XmlTextWriter(@"C:\Indoc Gerenciamentos\" + GridView1.Rows[i].Cells[10].Text + ".xml", Encoding.GetEncoding("ISO-8859-1"));

                    String valor01 = GridView1.Rows[i].Cells[1].Text;

                    //inicia o documento xml
                    writer.WriteStartDocument();

                    //define a indentação do arquivo
                    writer.Formatting = Formatting.Indented;
                    //escreve um comentário
                    writer.WriteStartElement("Coleta");
                    writer.WriteElementString("Versao", "2.0");

                    //escreve o elmento raiz
                    writer.WriteStartElement("Resumo");

                    //writer.WriteStartElement("filmes");

                    //escrever o atributo ano com valor 2007
                    //writer.WriteAttributeString("ano", "2012");

                    //Escreve os sub-elementos
                    writer.WriteElementString("DataCriacao", "2019-01-18");
                    writer.WriteElementString("CnjCartorio", "000");
                    writer.WriteElementString("CodigoServico", "3");
                    writer.WriteElementString("NaturezaDocumento", GridView1.Rows[i].Cells[6].Text);
                    writer.WriteElementString("DataProtocolo", GridView1.Rows[i].Cells[7].Text.Trim().Replace("&nbsp;", ""));
                    writer.WriteElementString("NumeroProtocolo", GridView1.Rows[i].Cells[8].Text.Trim().Replace("&nbsp;", ""));
                    writer.WriteElementString("DataAto", GridView1.Rows[i].Cells[9].Text.Trim().Replace("&nbsp;", ""));
                    writer.WriteElementString("NumeroAto", GridView1.Rows[i].Cells[10].Text.Trim().Replace("&nbsp;", ""));
                    writer.WriteElementString("Livro", GridView1.Rows[i].Cells[11].Text.Trim().Replace("&nbsp;", ""));
                    writer.WriteElementString("Folha", GridView1.Rows[i].Cells[12].Text.Trim().Replace("&nbsp;", ""));
                    writer.WriteElementString("Publicado", GridView1.Rows[i].Cells[13].Text.Trim().Replace("&nbsp;", ""));
                    writer.WriteElementString("DataOcorrencia", GridView1.Rows[i].Cells[14].Text.Trim().Replace("&nbsp;", ""));
                    writer.WriteElementString("NumeroSelo", GridView1.Rows[i].Cells[15].Text.Trim().Replace("&nbsp;", ""));
                    writer.WriteElementString("Matricula", GridView1.Rows[i].Cells[16].Text.Trim().Replace("&nbsp;", ""));
                    writer.WriteElementString("TipoLivro", "1");
                    writer.WriteElementString("TipoEnvio", GridView1.Rows[i].Cells[18].Text.Trim().Replace("&nbsp;", ""));
                    writer.WriteElementString("ProtocoloCEI", GridView1.Rows[i].Cells[19].Text.Trim().Replace("&nbsp;", ""));
                    writer.WriteElementString("DocumentoAnexo", "S");
                    writer.WriteElementString("StatusAto", "");
                    writer.WriteElementString("UsoCartorio", "");
                    writer.WriteElementString("Sequencia", GridView1.Rows[i].Cells[23].Text.Trim().Replace("&nbsp;", ""));
                    writer.WriteElementString("IndicadorReal", GridView1.Rows[i].Cells[24].Text.Trim().Replace("&nbsp;", ""));
                    writer.WriteElementString("ExOficio", "I");
                    writer.WriteElementString("ComplementoExOficio", "Envio");
                    writer.WriteElementString("GcStatusRTD", GridView1.Rows[i].Cells[27].Text.Trim().Replace("&nbsp;", ""));
                    writer.WriteElementString("GcResumoDocumento", GridView1.Rows[i].Cells[28].Text.Trim().Replace("&nbsp;", ""));
                    writer.WriteElementString("GcIdentificacaoEmpresa", GridView1.Rows[i].Cells[29].Text.Trim().Replace("&nbsp;", ""));
                    writer.WriteElementString("ValorSelo", GridView1.Rows[i].Cells[30].Text.Trim().Replace("&nbsp;", ""));
                    writer.WriteElementString("ValorTransacao", GridView1.Rows[i].Cells[31].Text.Trim().Replace("&nbsp;", ""));
                    writer.WriteElementString("ProtestoIndetificacaoTitulo", GridView1.Rows[i].Cells[32].Text.Trim().Replace("&nbsp;", ""));
                    writer.WriteElementString("ProtestoStatusTitulo", GridView1.Rows[i].Cells[33].Text.Trim().Replace("&nbsp;", ""));


                    // encerra o elemento raiz
                    writer.WriteEndElement();
                    writer.WriteStartElement("Partes");
                    writer.WriteStartElement("Dados");
                    writer.WriteElementString("Nome", GridView1.Rows[i].Cells[35].Text.Trim().Replace("&nbsp;", ""));
                    writer.WriteElementString("DataNascimento", GridView1.Rows[i].Cells[36].Text.Trim().Replace("&nbsp;", ""));
                    writer.WriteElementString("Natural", GridView1.Rows[i].Cells[37].Text.Trim().Replace("&nbsp;", ""));
                    writer.WriteElementString("UF", GridView1.Rows[i].Cells[38].Text.Trim().Replace("&nbsp;", ""));
                    writer.WriteElementString("CpfCnpj", GridView1.Rows[i].Cells[39].Text.Trim().Replace("&nbsp;", ""));
                    writer.WriteElementString("TipoDaParte", GridView1.Rows[i].Cells[40].Text.Trim().Replace("&nbsp;", ""));
                    writer.WriteElementString("Sexo", GridView1.Rows[i].Cells[41].Text.Trim().Replace("&nbsp;", ""));
                    writer.WriteElementString("Documentos", null);





                    writer.WriteEndElement();

                    //Escreve o XML para o arquivo e fecha o objeto escritor
                    writer.Close();
                }

            
            catch (Exception ex)
            {
            }
        }
    }
}