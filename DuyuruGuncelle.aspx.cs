using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DuyuruGuncelle : System.Web.UI.Page
{
    int id;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            id = Convert.ToInt32(Request.QueryString["DUYURUID"]);
            txtduyuruid.Text = id.ToString();
            DataSetTableAdapters.TBL_DUYURUTableAdapter dt = new DataSetTableAdapters.TBL_DUYURUTableAdapter();
            dt.DuyuruSec(id);
            txtduyurubaslik.Text = dt.DuyuruSec(id)[0].DUYURUBASLIK;
            TextArea1.Value = dt.DuyuruSec(id)[0].DUYURUICERIK;

        }
    }

    protected void btnduyuruguncelle_Click(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_DUYURUTableAdapter dt = new DataSetTableAdapters.TBL_DUYURUTableAdapter();
        dt.DuyuruGuncelle(txtduyurubaslik.Text, TextArea1.Value, Convert.ToInt32(txtduyuruid.Text));
        Response.Redirect("DuyuruListesi.aspx");
    }
}