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
                oPropertyBO.address = string.Empty;
                FindProperty();            
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message.ToString()); 
        }
    }
    public void FindProperty()
    {        
        DataTable dt = new DataTable();
        dt = oPropertyBAL.FindProperty(oPropertyBO);
        dlstProperty.DataSource = dt;
        dlstProperty.DataBind();
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        try
        {
            oPropertyBO.address = txtSearch.Text;
            FindProperty();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message.ToString());
        }
    }
}