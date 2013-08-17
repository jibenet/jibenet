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
/// Summary description for PropertyBAL
/// </summary>
public class PropertyBAL
{   
    PropertyDAL oPropertyDAL = new PropertyDAL();

    public PropertyBAL()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public DataTable InsertProperty(PropertyBO oPropertyBO, PropertyImageBO oPropertyImageBO, AgentBO oAgentBO)
    {
        try
        {
            return oPropertyDAL.InsertProperty(oPropertyBO, oPropertyImageBO, oAgentBO);
        }
        catch
        {
            throw;
        }
        finally
        {

        }
    }
    public DataTable FindProperty(PropertyBO oPropertyBO)
    {
        try
        {
            return oPropertyDAL.FindProperty(oPropertyBO);
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
