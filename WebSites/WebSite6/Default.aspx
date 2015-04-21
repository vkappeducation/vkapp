<%@ Page Title="Домашняя страница" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>


<asp:Content runat="server" ContentPlaceHolderID="MainContent">

    <form id="form1" runat="server" style="height: 451px">

      


      

        <asp:Table ID="Table1" runat="server" Height="130px" Width="21px" CellPadding="5" CellSpacing="5">
            <asp:TableRow runat="server">

                <asp:TableCell runat="server"><asp:Label ID="Label1" runat="server" Text="Страна"></asp:Label>
</asp:TableCell>
                <asp:TableCell runat="server"><asp:ListBox ID="ListBox1" runat="server" DataSourceID="XmlDataSource1" DataValueField="" 
                            DataMember="countrie" DataTextField="name" Height="75px" Width="140px"></asp:ListBox>
</asp:TableCell>
                <asp:TableCell ID="Cell1" runat="server" RowSpan="20" VerticalAlign="Top"></asp:TableCell>

            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"><asp:Label ID="Label2" runat="server" Text="Вид"></asp:Label>
</asp:TableCell>
                <asp:TableCell runat="server"><asp:ListBox ID="ListBox2" runat="server" Height="75px" Width="140px"><asp:ListItem>Летние школы</asp:ListItem>
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
                <asp:TableCell runat="server"><asp:ListBox ID="ListBox3" runat="server" Height="39px" Width="140px"><asp:ListItem>экономическое</asp:ListItem>
<asp:ListItem>техническое</asp:ListItem>
</asp:ListBox>
</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server"><asp:Button ID="Button3" runat="server"  BackColor="#006600" BorderStyle="None" Font-Bold="True" Font-Names="Arial" Font-Size="13pt" ForeColor="White" Text="Найти" OnClick="Button3_Click" />
</asp:TableCell>
                <asp:TableCell runat="server"><asp:Button ID="Button1" runat="server" BackColor="#006600" BorderStyle="None" Font-Bold="True" Font-Names="Arial" Font-Size="13pt" ForeColor="White" OnClick="Button1_Click" Text="Очистить" />
</asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" Height="200px"></asp:TableCell>
                <asp:TableCell runat="server" Height="200px"></asp:TableCell>
            </asp:TableRow>
        </asp:Table>

     
        

     
        <asp:XmlDataSource ID="XmlDataSource1" Runat="server" DataFile="App_Data/Countries.xml"
            XPath="countries/countrie">
        </asp:XmlDataSource>&nbsp;
    </form>

</asp:Content>
