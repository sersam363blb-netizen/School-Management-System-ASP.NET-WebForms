using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OgrenciGuncelle : System.Web.UI.Page
{
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false) { 

        try
		{
            txtogrid.Text = Session["OGRNUMARA"].ToString();

            DataSetTableAdapters.TBL_OGRENCITableAdapter dt = new DataSetTableAdapters.TBL_OGRENCITableAdapter();

            txtOgrAd.Text = dt.OgrenciSec(id)[0].OGRAD;
            txtOgrSoyad.Text = dt.OgrenciSec(id)[0].OGRSOYAD;
            txtOgrMail.Text = dt.OgrenciSec(id)[0].OGRMAIL;
            txtOgrTelefon.Text = dt.OgrenciSec(id)[0].OGRTELEFON;
            txtOgrSifre.Text = dt.OgrenciSec(id)[0].OGRSIFRE;
            txtOgrFoto.Text = dt.OgrenciSec(id)[0].OGRFOTOGRAF;
        }
		catch (Exception)
		{
            
            txtOgrFoto.Text = "link Girin";
			
		}
        }
    }

    protected void btnOgrEkle_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_OGRENCITableAdapter dt = new DataSetTableAdapters.TBL_OGRENCITableAdapter();
        dt.OgrenciGuncelle(txtOgrAd.Text, txtOgrSoyad.Text, txtOgrSifre.Text, txtOgrFoto.Text, txtOgrMail.Text, txtOgrTelefon.Text,Convert.ToInt32(txtogrid.Text));
        Response.Redirect("OgrenciListesi.aspx");

    }
}