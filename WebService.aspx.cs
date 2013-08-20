using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using JSONLib;

public partial class WebService : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["key"] != null)
        {
            if (Request.QueryString["key"].ToString() == "pList")
            {
                Response.Write(PropertyList(Request.QueryString["address"].ToString()));
            }
        }
    }
    public string PropertyList(string address)
    {
        PropertyBAL oPropertyBAL = new PropertyBAL();
        PropertyBO oPropertyBO = new PropertyBO();
        oPropertyBO.address = address;
        DataTable dt = new DataTable();
        dt = oPropertyBAL.FindProperty(oPropertyBO);
        JSONClass objJSONClass = new JSONClass();
        return objJSONClass.CreateJSONParameters(dt);
    }
}