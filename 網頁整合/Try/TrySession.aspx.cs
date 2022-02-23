using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 網頁整合.Try
{
    public partial class TrySession : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["Try"] = TextBox1.Text;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Session["Try"] != null)
            {
                Literal1.Visible = true;
                Label1.Text = Session["Try"].ToString();
            }
            else
            {
                Literal1.Visible = false;
            }
        }
    }
}