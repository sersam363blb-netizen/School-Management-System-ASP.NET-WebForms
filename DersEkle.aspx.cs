using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ders_Ekle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnDersEkle_Click(object sender, EventArgs e)
    {
        
            DataSetTableAdapters.TBL_DERSLERTableAdapter dt = new DataSetTableAdapters.TBL_DERSLERTableAdapter();
            dt.DersEkle(txtDersAd.Text);
            Response.Redirect("DersListesi.aspx");
        
    }
}