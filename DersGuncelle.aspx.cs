using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DersGuncelle : System.Web.UI.Page
{
    int dersID;

    protected void Page_Load(object sender, EventArgs e)
    {
        dersID = Convert.ToInt32(Request.QueryString["DERSID"]);
        DataSetTableAdapters.TBL_DERSLERTableAdapter ds = new DataSetTableAdapters.TBL_DERSLERTableAdapter();
        if (Page.IsPostBack == false)
        {
            txtDersAd.Text = ds.DersGetir(dersID)[0].DERSAD;
        }
    }

    protected void btGuncelle_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_DERSLERTableAdapter ds = new DataSetTableAdapters.TBL_DERSLERTableAdapter();
        ds.DersGüncelle(txtDersAd.Text, dersID);
        Response.Redirect("DersListesi.aspx");
    }
}