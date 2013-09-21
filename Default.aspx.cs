using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.Title = "Clipas - Plataforma nº 1 do Brasil";       

        HtmlMeta _metaD = new HtmlMeta();
        _metaD.Name = "description";
        _metaD.Content = "Visite o mercado comercial de imóveis em São Paulo com apenas alguns cliques";
        
        HtmlMeta _metaK = new HtmlMeta();
        _metaK.Name = "keywords";
        _metaK.Content = "Brasil, São Paulo, Loja, Escritório, À Venda, Para Alugar";

        ((Control)Header).Controls.Add(_metaD);
        ((Control)Header).Controls.Add(_metaK);
    }   
}