<%@ Page Title="Домашняя страница" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ OutputCache Duration="20" VaryByParam="None" VaryByCustom="browser" %>
<%@ Register TagPrefix="mycontrol" TagName="WebUserControl" Src="~/WebUserControl.ascx" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">

    <form id="form1" runat="server" style="margin: 0px; padding: 0px; height: 650px;width: 830px; background-color: #ffecc2; font-family: Verdana; ">

      


        <br />

   
        <asp:Table ID="Table2" runat="server" Width="820px">
            <asp:TableRow runat="server">
                <asp:TableCell runat="server">   <asp:Label ID="Label5" runat="server" Text="Поиск грантов и стипендий" CssClass="container" Font-Size="20pt"></asp:Label> </asp:TableCell>
                <asp:TableCell runat="server"  HorizontalAlign="Left" Width="50"><asp:Label ID="Label7" runat="server"  Text="Академическая  мобильность" ForeColor="#6F2F00" Font-Bold="True" Font-Size="13pt" Width="220px"></asp:Label></asp:TableCell>
            </asp:TableRow>
         
        </asp:Table>
 
        

    



        <asp:Table ID="Table1" runat="server" Height="130px" Width="61px" CellPadding="5" CellSpacing="5" BorderStyle="None" ForeColor="#414141">
           
            <asp:TableRow runat="server" BorderStyle="Double" BorderColor="#333333" BorderWidth="2px" ClientIDMode="Static">

                <asp:TableCell runat="server"><asp:Label ID="Label1" runat="server" Text="Страна"></asp:Label>
</asp:TableCell>
               
                <asp:TableCell ID="Cell1" runat="server" RowSpan="20" VerticalAlign="Top"></asp:TableCell>

            </asp:TableRow>

              <asp:TableRow ID="TableRow1" runat="server">
                   <asp:TableCell ID="TableCell1" runat="server"><asp:ListBox ID="ListBox1" runat="server" DataSourceID="XmlDataSource1" DataValueField="" 
                            DataMember="countrie" DataTextField="name"  Height="90px" Width="180px" Font-Size="Medium"></asp:ListBox>
</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server" BorderColor="#333333" BorderStyle="Groove" BorderWidth="2px">
                <asp:TableCell runat="server"><asp:Label ID="Label2" runat="server" Text="Вид"></asp:Label>
</asp:TableCell>
                
            </asp:TableRow>
             <asp:TableRow ID="TableRow2" runat="server">
                 <asp:TableCell ID="TableCell2" runat="server"><asp:ListBox ID="ListBox2" runat="server" Height="90px" Width="180px" Font-Size="Medium"><asp:ListItem>Летние школы</asp:ListItem>
<asp:ListItem>Магистратура</asp:ListItem>
<asp:ListItem>Докторантура</asp:ListItem>
<asp:ListItem>Семинары</asp:ListItem>
<asp:ListItem>Конференции</asp:ListItem>
<asp:ListItem>Курсы</asp:ListItem>
<asp:ListItem>Стажировки</asp:ListItem>
<asp:ListItem>Конкурсы</asp:ListItem>
<asp:ListItem>Прочие</asp:ListItem>
</asp:ListBox>
</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"><asp:Label ID="Label4" runat="server" Text="Направление"></asp:Label>
</asp:TableCell>
             
            </asp:TableRow> 
                <asp:TableRow ID="TableRow3" runat="server">
                       <asp:TableCell ID="TableCell3" runat="server"><asp:ListBox ID="ListBox3" runat="server" Height="39px"   Width="180px" Font-Size="Medium"><asp:ListItem>экономическое</asp:ListItem>
<asp:ListItem>техническое</asp:ListItem>
</asp:ListBox>
</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" HorizontalAlign="Center"><asp:Button ID="Button3" runat="server"  BackColor="#6666FF" BorderStyle="None" Font-Bold="False" Font-Size="16px" ForeColor="White" Text="Найти" OnClick="Button3_Click"  />
&nbsp;<asp:Button ID="Button1" runat="server" BackColor="#999999" BorderStyle="None" Font-Bold="False" Font-Size="16px" ForeColor="White" OnClick="Button1_Click" Text="Очистить" Font-Overline="False" BorderColor="Gray" BorderWidth="10"   />
</asp:TableCell>
              

            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" Height="200px"><asp:Label ID="Label6" runat="server" Text="Показаны 10 случайных вариантов. Рекомендуем сузить условия поиска: выберите хотя бы страну." Font-Size="10" Font-Bold="False" Visible="False"></asp:Label></asp:TableCell>
                <asp:TableCell runat="server" Height="200px"></asp:TableCell>
            </asp:TableRow>
        
           
          
        </asp:Table>

     
        

     
        

     
        

     
        <asp:XmlDataSource ID="XmlDataSource1" Runat="server" DataFile="App_Data/Countries.xml"
            XPath="countries/countrie">
        </asp:XmlDataSource>&nbsp;
     
    </form>

</asp:Content>
