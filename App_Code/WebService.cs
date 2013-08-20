using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using JSONLib;
using System.Web.Script.Services;

/// <summary>
/// Summary description for WebService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
[ScriptService]
public class WebService : System.Web.Services.WebService {

    public WebService () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string HelloWorld() {
        return "Hello World";
    }

    [WebMethod]
    [ScriptMethod]
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
    [WebMethod]
    [ScriptMethod]
    public string PropertyListI(string address, string startArea, string startRate, string endArea, string endRate)
    {
        try
        {
            PropertyBAL oPropertyBAL = new PropertyBAL();
            PropertyBO oPropertyBO = new PropertyBO();
            PropertyBO oIPropertyBO = new PropertyBO();
            oPropertyBO.address = address;
            oPropertyBO.size = long.Parse(startArea);
            oPropertyBO.rate = long.Parse(startRate);
            oIPropertyBO.size = long.Parse(endArea);
            oIPropertyBO.rate = long.Parse(endRate);
            DataTable dt = new DataTable();
            dt = oPropertyBAL.FindProperty(oPropertyBO, oIPropertyBO);
            JSONClass objJSONClass = new JSONClass();
            return objJSONClass.CreateJSONParameters(dt);
        }
        catch (Exception ex)
        {
            return string.Empty;
        }
    }    
}
