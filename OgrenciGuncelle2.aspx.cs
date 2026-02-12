using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OgrenciGuncelle2 : System.Web.UI.Page
{
    public int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        
            if (!IsPostBack)
            {
                
                TextBox1.Text = Session["OGRNUMARA"].ToString();

                DataSetTableAdapters.TBL_OGRENCITableAdapter dt =
                    new DataSetTableAdapters.TBL_OGRENCITableAdapter();

                var ogr = dt.OngrenciPaneliGetir(TextBox1.Text)[0];

                TextBox2.Text = ogr.OGRAD + " " + ogr.OGRSOYAD;
                TextBox3.Text = ogr.OGRMAIL;
                TextBox4.Text = ogr.OGRSIFRE;
                TextBox5.Text = ogr.OGRTELEFON;
            }
    }

    protected void btnguncelle_Click(object sender, EventArgs e)
    {
        id = Convert.ToInt32(Session["OGRNUMARA"]);
        DataSetTableAdapters.TBL_OGRENCITableAdapter dt = new DataSetTableAdapters.TBL_OGRENCITableAdapter();
        dt.OgrenciBilgiGuncelle(TextBox4.Text, TextBox3.Text, TextBox5.Text, id.ToString());
        Response.Write("<script language='javascript'>alert('Bilgileriniz Güncellenmiştir.');</script>");
        Response.Redirect("OgrenciDefault.aspx?OGRNUMARA=" + TextBox1.Text);
    }
}