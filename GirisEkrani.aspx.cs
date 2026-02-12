using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class GirisEkrani : System.Web.UI.Page
{
    SqlConnection baglan = new SqlConnection("Data Source=.;Initial Catalog=SiteDB;Integrated Security=True");


    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
        baglan.Open();
        SqlCommand komut = new SqlCommand("SELECT * FROM TBL_OGRENCI WHERE OGRNUMARA=@P1 and OGRSIFRE=@P2", baglan);
        komut.Parameters.AddWithValue("@P1", TextBox1.Text);
        komut.Parameters.AddWithValue("@P2", TextBox2.Text);
        SqlDataReader dr = komut.ExecuteReader();
        if (dr.Read())
        {
            Session.Add("OGRNUMARA", TextBox1.Text);
            Response.Redirect("OgrenciDefault.aspx");
            return;
        }
        baglan.Close();

        baglan.Open();
        SqlCommand komut1 = new SqlCommand("SELECT * FROM TBL_OGRETMEN WHERE OGRTNUMARA=@P1 and OGRTSIFRE=@P2", baglan);
        komut1.Parameters.AddWithValue("@P1", TextBox1.Text);
        komut1.Parameters.AddWithValue("@P2", TextBox2.Text);
        SqlDataReader dr1 = komut1.ExecuteReader();
        if (dr1.Read())
        {
        Session.Add("OGRTNUMARA", TextBox1.Text);
        Response.Redirect("Default.aspx");
        }
        else
        {
            TextBox2.Text = "Hatalı Giriş Yaptınız Tekrar Deneyiniz.";
        }
        baglan.Close();
    }
}