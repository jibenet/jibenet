<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;
using System.IO;
using System.Web.UI.WebControls;

public class Handler : IHttpHandler {
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        HttpPostedFile postedFile = context.Request.Files["Filedata"];

        string savepath = "";
        string tempPath = "";
        tempPath = System.Configuration.ConfigurationManager.AppSettings["FolderPath"];
        savepath = context.Server.MapPath(tempPath);
        Guid guid;
        guid = Guid.NewGuid();
        string filename = guid + postedFile.FileName;
        if (!Directory.Exists(savepath))
            Directory.CreateDirectory(savepath);

        postedFile.SaveAs(savepath + @"\" + filename);
        context.Session["filename"] = context.Session["filename"].ToString() + filename + ",";     
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }
}