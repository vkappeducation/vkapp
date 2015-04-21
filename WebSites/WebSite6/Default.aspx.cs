using System;
using System.Collections.Generic;
using System.Drawing;
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
    string type = ListBox2.SelectedIndex.ToString();
    string spec = ListBox3.SelectedIndex.ToString();
    
    string inCountry = "";
    string inType = "";
    string inSpec = "";
    string inDiscription = "";
    string inName = "";
    xml.Load(HttpContext.Current.Server.MapPath("~/App_Data/grants.xml"));
        Table tbl = new Table();
    foreach (XmlNode n in xml.SelectNodes("/grants/grant")) 
            {
         
            
             inCountry= n.SelectSingleNode("country").InnerText;
             inType = n.SelectSingleNode("type").InnerText;
             inSpec = n.SelectSingleNode("spec").InnerText;
        if (((inCountry == country)||(country == ""))&&((inType == type)||(type == "-1"))&&((inSpec == spec)||(spec == "-1"))) 
            {Label l = new Label();
             Label l2 = new Label();
             l.ForeColor = Color.Blue;
             HyperLink hl = new HyperLink();  
             TableRow tbr = new TableRow();
             TableRow tbr2 = new TableRow();
             TableRow tbr3 = new TableRow();
             TableCell tbc3 = new TableCell();
             TableCell tbc = new TableCell();
             TableCell tbc2 = new TableCell();
             tbc3.HorizontalAlign = HorizontalAlign.Right;
             Button b = new Button();
             b.Text = "Сайт гранта";

             b.BorderStyle = BorderStyle.None;
            // b.BackColor = Color.FromArgb;
             b.Font.Size = FontUnit.Medium;
            inName = n.SelectSingleNode("name").InnerText;
            inDiscription = n.SelectSingleNode("discription").InnerText;
            
             l.Text = inName;
             l2.Text = inDiscription;
        
            // b.PostBackUrl = ;
             b.OnClientClick = "navAway('" + n.SelectSingleNode("url").InnerText + "')";
             hl.NavigateUrl = hl.Text;
             l.Width = 450;
          
            tbr.Controls.Add(tbc);
            tbc.Controls.Add(l);
            tbr2.Controls.Add(tbc2);
            tbc2.Controls.Add(l2);
            tbr3.Controls.Add(tbc3);
            tbc3.Controls.Add(b);
            tbl.Controls.Add(tbr);
            tbl.Controls.Add(tbr2);
            tbl.Controls.Add(tbr3);
          
           
        }

            }
    Cell1.Controls.Add(tbl);
 

        
 
    }
}