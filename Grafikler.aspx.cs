using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Grafikler : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        {
            if (!IsPostBack)
            {
                DataSetTableAdapters.TBL_OgrNotlarıTableAdapter dt = new DataSetTableAdapters.TBL_OgrNotlarıTableAdapter();

                var sonuc = dt.OgrencDuzeylerıSinav1();
                Response.Write(sonuc[0].Table.Columns[0].ColumnName);
                var row = sonuc[0];

                int zayif = Convert.ToInt32(row[0]);
                int orta = Convert.ToInt32(row[1]);
                int iyi = Convert.ToInt32(row[2]);
                int pekiyi = Convert.ToInt32(row[3]);

                Chart1.Series.Clear();
                Chart1.Series.Add("Sinav1");

                Chart1.Series["Sinav1"].ChartType = System.Web.UI.DataVisualization.Charting.SeriesChartType.Column;

                Chart1.Series["Sinav1"].Points.AddXY("0-49", zayif);
                Chart1.Series["Sinav1"].Points.AddXY("50-69", orta);
                Chart1.Series["Sinav1"].Points.AddXY("70-84", iyi);
                Chart1.Series["Sinav1"].Points.AddXY("85-100", pekiyi);
            }

        }
    }
}