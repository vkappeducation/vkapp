<%@ Application Language="C#" %>
<%@ Import Namespace="WebSite4" %>
<%@ Import Namespace="System.Web.Optimization" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        // Код, выполняемый при запуске приложения
        BundleConfig.RegisterBundles(BundleTable.Bundles);
        AuthConfig.RegisterOpenAuth();
    }
    
    void Application_End(object sender, EventArgs e)
    {
        //  Код, выполняемый при завершении работы приложения

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Код, выполняемый при появлении необработанной ошибки

    }

</script>
