﻿using System;
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
/// Summary description for PropertyImageBO
/// </summary>
public class PropertyImageBO
{
    public long ID
    {
        get;
        set;
    }
    public string image
    {
        get;
        set;
    }
    public long propertyID
    {
        get;
        set;
    }
}
