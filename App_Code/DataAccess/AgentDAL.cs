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
/// Summary description for AgentDAL
/// </summary>
public class AgentDAL
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["jibenet"].ConnectionString);
    SqlCommand cmd;    
    SqlDataAdapter dad;    
    DataTable dt;
    string query;

    public AgentDAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataTable SelectAgent()
    {
        try
        {
            query = "SELECT TOP 3 name, business, phone FROM Agent";
            dad = new SqlDataAdapter(query, con);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }            
            dt = new DataTable();
            dad.Fill(dt);
            return dt;
        }
        catch
        {
            throw;
        }
        finally
        {
            con.Close();
        }
    }    
    public DataTable FindAgent(AgentBO oAgentBO)
    {
        try
        {
            query = "SELECT name, business, phone FROM Agent WHERE email = @email";
            dad = new SqlDataAdapter(query, con);            
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            dad.SelectCommand.Parameters.AddWithValue("@email", oAgentBO.email);            
            dt = new DataTable(); 
            dad.Fill(dt);
            return dt;             
        }
        catch
        {
            throw;
        }
        finally
        {
            con.Close();
        }
    }    
}
