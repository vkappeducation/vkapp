using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ListBox1.ClearSelection();
        ListBox2.ClearSelection();
        ListBox3.ClearSelection();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {	XmlDocument xml = new XmlDocument();
    string country = ListBox1.SelectedValue;
   
    xml.Load(HttpContext.Current.Server.MapPath("~/App_Data/grants.xml"));
        Table tbl = new Table();
    foreach (XmlNode n in xml.SelectNodes("/grants/grant")) 
            {Label l = new Label();
         
            
             l.Text += n.SelectSingleNode("country").InnerText;
        if ((l.Text == country)||(country == "")) 
        {
         
           
            
             HyperLink hl = new HyperLink();
         
             hl.Text = n.SelectSingleNode("url").InnerText;
             hl.NavigateUrl = hl.Text; 
            TableRow tbr = new TableRow();
            TableRow tbr2 = new TableRow();
            TableCell tbc = new TableCell();
            TableCell tbc2 = new TableCell();
            tbr.Controls.Add(tbc);
            tbr2.Controls.Add(tbc2);
            tbc.Controls.Add(l);
            tbc2.Controls.Add(hl);
            tbl.Controls.Add(tbr);
            tbl.Controls.Add(tbr2);
        }

            }
    Cell1.Controls.Add(tbl);
 

        
 
    }
}