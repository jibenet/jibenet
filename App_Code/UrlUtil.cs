using System;
using System.Collections.Generic;
using System.Web;
using System.Configuration;

/// <summary>
/// Summary description for UrlUtil
/// </summary>
public class UrlUtil
{
    public static string MyWebRootUrl = ConfigurationManager.AppSettings["MyRootUrl"].ToString();
    public static string MyWebUrl = ConfigurationManager.AppSettings["MyUrl"].ToString();
}