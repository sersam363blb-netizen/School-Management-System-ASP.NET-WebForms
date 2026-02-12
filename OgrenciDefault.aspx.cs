using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OgrenciDefault : System.Web.UI.Page
{
    int id;

    protected void Page_Load(object sender, EventArgs e)
    {

        TextBox1.Text =Session["OGRNUMARA"].ToString();
        DataSetTableAdapters.TBL_OGRENCITableAdapter dt = new DataSetTableAdapters.TBL_OGRENCITableAdapter();
        TextBox2.Text ="AD SOYAD:" + dt.OngrenciPaneliGetir(TextBox1.Text)[0].OGRAD + " " + dt.OngrenciPaneliGetir(TextBox1.Text)[0].OGRSOYAD;
        TextBox3.Text = "MAIL: " + dt.OngrenciPaneliGetir(TextBox1.Text)[0].OGRMAIL;
        TextBox4.Text = "SIFRE:" + dt.OngrenciPaneliGetir(TextBox1.Text)[0].OGRSIFRE;
        TextBox5.Text = "TELEFON:" + dt.OngrenciPaneliGetir(TextBox1.Text)[0].OGRTELEFON;

    }

    protected void btnguncelle_Click(object sender, EventArgs e)
    {
        Response.Redirect("OgrenciGuncelle2.aspx");
    }
}