<%@ Application Language="C#" %>
<%@ Import Namespace="System.Web.Routing" %>
<%@ Import Namespace="System.Web.Services.Protocols" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup
        RegisterRoutes(RouteTable.Routes);
    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown
    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs
    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started
    }

    public static void RegisterRoutes(RouteCollection routes)
    {
        routes.MapPageRoute("Default", "Home", "~/Default.aspx");

        routes.MapPageRoute("AddProperty", "PostProperty", "~/Agent/AddProperty.aspx");

        //routes.MapPageRoute("AutoUpload", "AutoUpload", "~/Agent/AutoUpload.aspx");

        routes.MapPageRoute("ListProperty", "{buyorrent}/Brasil/{address}/{type}_Comercial", "~/Agent/ListProperty.aspx");

        routes.MapPageRoute("PropertyDetail", "{buyorrent}/Brasil/{address}/{type}_Comercial/{pID}", "~/Agent/PropertyDetail.aspx");
    }
    
    
    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.
    }
       
</script>
