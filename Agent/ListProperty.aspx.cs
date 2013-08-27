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
                if (Request.QueryString["type"] != null)
                {
                    hdType.Value = Request.QueryString["type"].ToString();
                    txtSearch.Value = Request.QueryString["address"].ToString();
                }
                else
                {
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