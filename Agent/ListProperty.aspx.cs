using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
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
                    hdBuyOrRent.Value = Page.RouteData.Values["buyorrent"].ToString();                             
                    hdSearch.Value = Page.RouteData.Values["address"].ToString();
                    hdType.Value = Page.RouteData.Values["type"].ToString();
                }
                else
                {
                    hdBuyOrRent.Value = "Para Alugar";
                    hdType.Value = "Escritório";
                }
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message.ToString()); 
        }
    }   
}