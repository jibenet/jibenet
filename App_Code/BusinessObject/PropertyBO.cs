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
/// Summary description for PropertyBO
/// </summary>
public class PropertyBO
{
    public long propertyID
    {
        get;
        set;
    }
    public string name
    {
        get;
        set;
    }
    public string description
    {
        get;
        set;
    }
    public string address
    {
        get;
        set;
    }
    public string zipCode
    {
        get;
        set;
    }
    public long size
    {
        get;
        set;
    }
    public long rate
    {
        get;
        set;
    }
    public int totalImages
    {
        get;
        set;
    }
    public int parkings
    {
        get;
        set;
    }
    public int toilets
    {
        get;
        set;
    }
    public int kitchens
    {
        get;
        set;
    }
    public bool hasReception
    {
        get;
        set;
    }
    public bool isFurnished
    {
        get;
        set;
    }
    public string leaseTerms
    {
        get;
        set;
    }
    public int termLength
    {
        get;
        set;
    }
    public DateTime postDate
    {
        get;
        set;
    }
    public DateTime lastUpdate
    {
        get;
        set;
    }
    public long relevance
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
