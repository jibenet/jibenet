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
                Response.Write(PropertyList(Request.QueryString["buyorrent"].ToString(), Request.QueryString["type"].ToString(), Request.QueryString["address"].ToString()));
            }
        }
        else
        {
            Response.Write("Enter valid parameters.");
        }
    }
    public string PropertyList(string buyorrent, string type, string address)
    {
        PropertyBAL oPropertyBAL = new PropertyBAL();
        PropertyBO oPropertyBO = new PropertyBO();
        oPropertyBO.buyorrent = buyorrent;        
        oPropertyBO.type = type;
        oPropertyBO.address = address;
        DataTable dt = new DataTable();
        dt = oPropertyBAL.FindProperty(oPropertyBO);
        System.Web.Script.Serialization.JavaScriptSerializer serializer = new System.Web.Script.Serialization.JavaScriptSerializer();
        List<Dictionary<string, object>> rows = new List<Dictionary<string, object>>();
        Dictionary<string, object> row = null;

        foreach (DataRow dr in dt.Rows)
        {
            row = new Dictionary<string, object>();
            foreach (DataColumn col in dt.Columns)
            {
                row.Add(col.ColumnName.Trim(), dr[col]);
            }
            rows.Add(row);
        }
        return serializer.Serialize(rows);
    }
}