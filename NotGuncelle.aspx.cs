using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NotGuncelle : System.Web.UI.Page
{
    int notid;

    protected void Page_Load(object sender, EventArgs e)
    {

        notid = Convert.ToInt32(Request.QueryString["NOTID"]); 
        
        if (Page.IsPostBack == false)
        {

            DataSetTableAdapters.TBL_OgrNotlarıTableAdapter og = new DataSetTableAdapters.TBL_OgrNotlarıTableAdapter();
            //TxtDersAdı.Text = og.NotGetir2(notid)[0].DERS_AD;
            txtOgrenciID.Text = og.NotGetir2(notid)[0].OGRENCIID.ToString();
            txtOgrAdSoyad.Text = og.NotGetir2(notid)[0].OGRENCIADSOYAD;
            txtSinav1.Text = og.NotGetir2(notid)[0].SINAV1.ToString();
            txtSinav2.Text = og.NotGetir2(notid)[0].SINAV2.ToString();
            txtSinav3.Text = og.NotGetir2(notid)[0].SINAV3.ToString();
            txtOrtalama.Text = og.NotGetir2(notid)[0].ORTALAMA.ToString();
            txtDurum.Text = og.NotGetir2(notid)[0].Durum.ToString();
        }
    }

    protected void btnhesapla_Click(object sender, EventArgs e)
    {
            double s1, s2, s3;
            double ortalama;
            s1 = Convert.ToDouble(txtSinav1.Text);
            s2 = Convert.ToDouble(txtSinav2.Text);
            s3 = Convert.ToDouble(txtSinav3.Text);
            ortalama = (s1 + s2 + s3) / 3.0;
            txtOrtalama.Text = ortalama.ToString("0.00");
            if (ortalama >= 50)
            {
                txtDurum.Text = "True";
            }
            else
            {
                txtDurum.Text = "False";
            }
        
    }

    protected void btGuncelle_Click(object sender, EventArgs e)
    {
        notid = Convert.ToInt32(Request.QueryString["NOTID"]);
        DataSetTableAdapters.TBL_OgrNotlarıTableAdapter og = new DataSetTableAdapters.TBL_OgrNotlarıTableAdapter();
        og.NotGuncelle(byte.Parse(txtSinav1.Text), byte.Parse(txtSinav2.Text), byte.Parse(txtSinav3.Text), decimal.Parse(txtOrtalama.Text), bool.Parse(txtDurum.Text), notid);
        Response.Redirect("NotListesi.aspx");
    }
}