using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class OgrenciBul : System.Web.UI.Page
{
    SqlConnection baglan = new SqlConnection(
        "Data Source=.;Initial Catalog=SiteDB;Integrated Security=True");

    protected void btnOgrenciBul_Click(object sender, EventArgs e)
    {
        baglan.Open();

        SqlCommand komut = new SqlCommand(
            "SELECT (OGRAD + ' ' + OGRSOYAD) AS OGRADSOYAD, OGRSIFRE, OGRMAIL, OGRTELEFON " +
            "FROM TBL_OGRENCI WHERE OGRNUMARA = @P1",
            baglan);

        komut.Parameters.AddWithValue("@P1", txtOgrenciBul.Text);

        SqlDataReader dr = komut.ExecuteReader();

        if (dr.Read())
        {
            txtogrenciadsoyad.Text = dr["OGRADSOYAD"].ToString();
            txtogrencisifresi.Text = dr["OGRSIFRE"].ToString();
            txtogrencimail.Text = dr["OGRMAIL"].ToString();
            txtogrencitelefon.Text = dr["OGRTELEFON"].ToString();
        }
        else
        {
            txtogrenciadsoyad.Text = "Öğrenci bulunamadı";
            txtogrencisifresi.Text = "";
            txtogrencimail.Text = "";
            txtogrencitelefon.Text = "";
        }

        dr.Close();
        baglan.Close();
    }
}