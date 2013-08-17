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
/// Summary description for PropertyDAL
/// </summary>
public class PropertyDAL
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["jibenet"].ConnectionString);
    SqlCommand cmd;    
    SqlDataReader drd;
    SqlDataAdapter dad;    
    DataSet dst;
    DataTable dt;
    string query;

    public PropertyDAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public DataTable InsertProperty(PropertyBO oPropertyBO, PropertyImageBO oPropertyImageBO, AgentBO oAgentBO)
    {
        try
        {
            cmd = new SqlCommand("InsertProperty", con);
            cmd.CommandType = CommandType.StoredProcedure;
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            cmd.Parameters.AddWithValue("@description", oPropertyBO.description);
            cmd.Parameters.AddWithValue("@address", oPropertyBO.address);
            cmd.Parameters.AddWithValue("@zipCode", oPropertyBO.zipCode);
            cmd.Parameters.AddWithValue("@size", oPropertyBO.size);
            cmd.Parameters.AddWithValue("@rate", oPropertyBO.rate);
            cmd.Parameters.AddWithValue("@totalImages", oPropertyBO.totalImages);
            cmd.Parameters.AddWithValue("@parkings", oPropertyBO.parkings);
            cmd.Parameters.AddWithValue("@toilets", oPropertyBO.toilets);
            cmd.Parameters.AddWithValue("@kitchens", oPropertyBO.kitchens);
            cmd.Parameters.AddWithValue("@hasReception", oPropertyBO.hasReception);
            cmd.Parameters.AddWithValue("@isFurnished", oPropertyBO.isFurnished);            
            cmd.Parameters.AddWithValue("@image", oPropertyImageBO.image);
            cmd.Parameters.AddWithValue("@name", oAgentBO.name);
            cmd.Parameters.AddWithValue("@business", oAgentBO.business);
            cmd.Parameters.AddWithValue("@email", oAgentBO.email);
            cmd.Parameters.AddWithValue("@phone", oAgentBO.phone);
            cmd.Parameters.AddWithValue("@status", oAgentBO.status);

            dad = new SqlDataAdapter(cmd);
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
    public DataTable FindProperty(PropertyBO oPropertyBO)
    {
        try
        {
            cmd = new SqlCommand("SearchProperty", con);
            cmd.CommandType = CommandType.StoredProcedure;
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            cmd.Parameters.AddWithValue("@address", oPropertyBO.address);
            SqlParameter message = cmd.Parameters.Add("@message", SqlDbType.VarChar, 500);
            message.Direction = ParameterDirection.Output;

            dad = new SqlDataAdapter(cmd);
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
