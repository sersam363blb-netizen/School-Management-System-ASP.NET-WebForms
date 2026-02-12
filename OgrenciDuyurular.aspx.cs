using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OgrenciDuyurular : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSetTableAdapters.TBL_DUYURUTableAdapter dt = new DataSetTableAdapters.TBL_DUYURUTableAdapter();
        Repeater1.DataSource = dt.OgrenciDuyuruListesi();
        Repeater1.DataBind();
    }
}