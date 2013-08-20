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
using System.Data.SqlClient;

/// <summary>
/// Summary description for AgentBAL
/// </summary>
public class AgentBAL
{   
    AgentDAL oAgentDAL = new AgentDAL();

    public AgentBAL()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public DataTable SelectAgent()
    {
        try
        {
            return oAgentDAL.SelectAgent();
        }
        catch
        {
            throw;
        }
        finally
        {

        }
    }    
    public DataTable FindAgent(AgentBO oAgentBO)
    {
        try
        {
            return oAgentDAL.FindAgent(oAgentBO);
        }
        catch
        {
            throw;
        }
        finally
        {

        }
    }    
}
