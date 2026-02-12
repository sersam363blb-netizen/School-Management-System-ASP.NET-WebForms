using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class İstatistikler : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_IstatistiklerTableAdapter dt = new DataSetTableAdapters.TBL_IstatistiklerTableAdapter();
        TextBox1.Text="Toplam Öğrenci Sayısı: "+ dt.OgrenciSayisiİstatistik().Rows[0][0].ToString();
        TextBox2.Text = "Toplam Öğretmen Sayısı: " +dt.OgretmenSayisiİstatistik().ToString();
        TextBox3.Text = "Toplam Ders Sayısı: " + dt.DersSayisiIstatistik().ToString();
        TextBox4.Text = "Matematik Sınav1de En Başarılı Öğrenci: " + dt.MatematikteSinav1deEnbasariliOgrenci().ToString();
        TextBox5.Text = "Fizik Sınav1de En Başarılı Öğrenci: " + dt.FizikSinav1deEnBasariliOgrenci().ToString();
        TextBox6.Text = "Dil Anlatım Sınav2de En Başarılı Öğrenci: " + dt.DilAnlatimSinav2deEnBasariliOgrenci();
        TextBox7.Text = "Edebiyat Sınav3te En Başarılı Öğrenci: " + dt.DilAnlatimSinav3deEnBasariliOgrenci();
        TextBox8.Text = "Edebiyat Sınav2de Not Ortalaması: "+dt.EdebiyatSinav2NotOrtalamasi().ToString();
        TextBox9.Text = "Fizik Sınav1 Not Ortalaması: " + dt.FizikSinav1NotOrtalamasi().ToString();
        TextBox10.Text = "Matematik Sınav1 Not Ortalaması: " + dt.MatematikSinav1NotOrtalamasi().ToString();
        TextBox11.Text = "Matematikten Kalan Öğrenci Sayısı: " + dt.MatematiktenKalanÖğrenciler().ToString();

    }
}