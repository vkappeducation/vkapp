<%@ Application Language="C#" %>
<%@ Import Namespace="WebSite6" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        // Код, выполняемый при запуске приложения
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
