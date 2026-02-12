using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OgrenciNot : System.Web.UI.Page
{
    int numara;
    protected void Page_Load(object sender, EventArgs e)
    {
            DataSetTableAdapters.TBL_OgrNotlarıTableAdapter dt = new DataSetTableAdapters.TBL_OgrNotlarıTableAdapter();
            Repeater1.DataSource = dt.OgrenciNotGetir(Session["OGRNUMARA"].ToString());
            Repeater1.DataBind();
    }
}