using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

/// <summary>
/// Summary description for AgentBO
/// </summary>
public class AgentBO
{
    public long agentID
    {
        get;
        set;
    }
    public string name
    {
        get;
        set;
    }
    public string business
    {
        get;
        set;
    }
    public string email
    {
        get;
        set;
    }
    public string phone
    {
        get;
        set;
    }
    public bool status
    {
        get;
        set;
    }   
}
