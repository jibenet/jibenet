using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data;

public partial class Agent_ListProperty : System.Web.UI.Page
{
    PropertyBO oPropertyBO = new PropertyBO();        
    PropertyBAL oPropertyBAL = new PropertyBAL();

    protected void Page_Load(object sender, EventArgs e)
    {        
        try
        {
            if (Page.IsPostBack == false)
            {
                if (Page.RouteData.Values["type"] != null)
                {               
                    hdBuyOrRent.Value = Page.RouteData.Values["buyorrent"].ToString().Replace('_', ' ');
                    hdSearch.Value = Page.RouteData.Values["address"].ToString().Replace('_', ' ');
                    hdType.Value = Page.RouteData.Values["type"].ToString().Replace('_', ' ');

                    Page.Title = "Clipas - " + hdBuyOrRent.Value + "- " + hdType.Value;

                    HtmlMeta _metaD = new HtmlMeta();
                    _metaD.Name = "description";
                    _metaD.Content = "Visite o mercado comercial de imóveis em São Paulo " + hdBuyOrRent.Value + " " + hdType.Value;

                    HtmlMeta _metaK = new HtmlMeta();
                    _metaK.Name = "keywords";
                    _metaK.Content = "Brasil, São Paulo, Loja, Escritório, À Venda, Para Alugar";

                    ((Control)Header).Controls.Add(_metaD);
                    ((Control)Header).Controls.Add(_metaK);    
                }              
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message.ToString()); 
        }
    }   
}