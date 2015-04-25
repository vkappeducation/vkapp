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
    protected void Page_PreRenderComplete(object sender, EventArgs e)
    {
        List<ListItem> t = new List<ListItem>();

        Comparison<ListItem> compare = new Comparison<ListItem>(CompareListItems);
        foreach (ListItem lbItem in ListBox1.Items)
            t.Add(lbItem);


        t.Sort(compare);
        ListBox1.Items.Clear();
        ListBox1.Items.AddRange(t.ToArray());
    }
    
    int CompareListItems(ListItem li1, ListItem li2)
    {
        return String.Compare(li1.Value, li2.Value);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        ListBox1.ClearSelection();
        ListBox2.ClearSelection();
        ListBox3.ClearSelection();
        Label6.Visible = false; 
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
    Label6.Visible = false;
    if ((country == "") && (type == "-1") && (spec == "-1"))
    {
        Label6.Visible = true;
    }
    xml.Load(HttpContext.Current.Server.MapPath("~/App_Data/grants.xml"));
        Table tbl = new Table();
        int k = 10;
        bool[] flags = new bool[9];
    foreach (XmlNode n in xml.SelectNodes("/grants/grant")) 
            {
        
            
             inCountry= n.SelectSingleNode("country").InnerText;
             inType = n.SelectSingleNode("type").InnerText;
             inSpec = n.SelectSingleNode("spec").InnerText;
             if (!flags[Convert.ToInt32(inType)])
             {
                 flags[Convert.ToInt32(inType)] = true;

                 if (((inCountry == country) || (country == "")) && ((inType == type) || (type == "-1")) && ((inSpec == spec) || (spec == "-1")))
                 {
                     Label l = new Label();
                     Label l2 = new Label();
                     l.ForeColor = Color.FromArgb(44, 60, 112);
                     l.Font.Bold = true;
                     Table tblIn = new Table();
                     HyperLink hl = new HyperLink();
                     TableRow tbrOut = new TableRow();
                     TableRow tbr = new TableRow();
                     TableCell tbcOut = new TableCell();
                     TableRow tbr2 = new TableRow();
                     TableRow tbr3 = new TableRow();
                     TableCell tbc3 = new TableCell();
                     TableCell tbc = new TableCell();
                     TableCell tbc2 = new TableCell();
                     WebUserControl wuc = new WebUserControl();

                     tbc3.HorizontalAlign = HorizontalAlign.Right;
                     Button b = new Button();
                     Button b2 = new Button();
                     b.Text = "Сайт гранта";
                     b2.Text = "Сохранить";
                     // b.CssClass = "enjoy_css";
                     b.BorderStyle = BorderStyle.None;
                     b.BackColor = Color.FromArgb(249, 171, 45);
                     b.Font.Size = FontUnit.Medium;
                     // b.Attributes.Add("class","enjoy_css");
                     inName = n.SelectSingleNode("name").InnerText;
                     inDiscription = n.SelectSingleNode("discription").InnerText;

                     l.Text = inName;
                     l2.Text = inDiscription;

                     // b.PostBackUrl = ;
                     //  b.OnClientClick = "navAway('" + n.SelectSingleNode("url").InnerText + "')";
                     b.Attributes.Add("onclick", "navAway('" + n.SelectSingleNode("url").InnerText + "')");

                     b2.Attributes.Add("onclick", "post('sdfsdf')");

                     // b2.Attributes.Add("onclick", "  VK.callMethod(\"saveWallPost\", \"Хрень \");");
                     hl.NavigateUrl = hl.Text;
                     l.Width = 560;
                     tbc.Style.Add("border-bottom", "2px solid #eee");
                     tbc3.Style.Add("border-top", "2px solid #eee");
                     tbc3.Style.Add("padding", "2px");
                     b.Style.Add("margin", "2px");
                     tblIn.BorderStyle = BorderStyle.Ridge;

                     tblIn.BorderColor = Color.LightGray;
                     tblIn.BorderWidth = 1;

                     tbr.Controls.Add(tbc);
                     tbc.Controls.Add(l);
                     tbr2.Controls.Add(tbc2);
                     tbc2.Controls.Add(l2);
                     // tbc3.Controls.Add(b2);  
                     tbc3.Controls.Add(b);

                     tbr3.Controls.Add(tbc3);
                     //   tbc3.Controls.Add(wuc);

                     tblIn.Controls.Add(tbr);
                     tblIn.Controls.Add(tbr2);
                     tblIn.Controls.Add(tbr3);
                     tbcOut.Controls.Add(tblIn);
                     tbrOut.Controls.Add(tbcOut);
                     tbrOut.BackColor = Color.White;
                     tbl.Controls.Add(tbrOut);


                 }
             }

            }
    Cell1.Controls.Clear();
    Panel pnl = new Panel();
        
    pnl.Height = 550;
    pnl.ScrollBars = ScrollBars.Vertical;
    pnl.Controls.Add(tbl);
    Cell1.Controls.Add(pnl);
 
        
 
 

        
 
    }
}