<%@ WebHandler Language="C#" Class="Upload" %>

using System;
using System.Web;
using System.IO;
using System.Web.UI.WebControls;

public class Upload : IHttpHandler, 
    System.Web.SessionState.IRequiresSessionState 
    {       
        public void ProcessRequest (HttpContext context) 
        {
            context.Response.ContentType = "text/plain";
            context.Response.Expires = -1;
            try
            {
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
                context.Response.Write(tempPath + "/" + filename);
                context.Response.StatusCode = 200;
            }
            catch (Exception ex)
            {
                context.Response.Write("Error: " + ex.Message);
            }
        }
        public bool IsReusable 
        {
            get 
            {
                return false;
            }
        }
    }    