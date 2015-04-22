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
    public override string GetVaryByCustomString(HttpContext context, string arg)
    {
        // Проверить запрашиваемый тип кэширования
        if (arg == "browser")
        {
            // Определить текущий браузер
            string browserName="";
            bool flag = false;
            for (int i = 0; i < context.Request.Form.Count; i++)
            {
                if (context.Request.Form.GetKey(i).Contains("ListBox"))
                {
                    browserName += context.Request.Form.GetValues(i)[0];
                    flag = true;
                }
                if (context.Request.Form.GetKey(i).Contains("Button1"))
                {
                    browserName = "Button1"; return browserName;
                }
                if ((context.Request.Form.GetKey(i).Contains("Button3"))&&(browserName==""))
                {
                    browserName += "Button3"; return browserName;
                }
                
            }
            if ((!flag)&&(context.Request.Form.Count>0))
            {
                browserName += "Button1";
            }
        //   string[] a=context.Request.Form.GetValues(context.Request.Form.Count-1);
           

            // Указать, что эта строка должна применяться для варьирования кэша
            return browserName;
        }
        else
        {
            return base.GetVaryByCustomString(context, arg);
        }
    }

</script>
