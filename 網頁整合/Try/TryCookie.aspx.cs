using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 網頁整合.Try
{
    public partial class TryCookie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Cookies["Try"].Value = HttpContext.Current.Server.UrlEncode(TextBox1.Text);
            Response.Cookies["Try"].Expires = DateTime.Now.AddMinutes(1);
            Response.Cookies["Try"].Path = "/Try";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["Try"] != null)
            {
                Literal1.Visible = true;
                Label1.Text = System.Web.HttpContext.Current.Server.UrlDecode(Request.Cookies["Try"].Value);
            }
            else
            {
                Label1.Text = "";
                Literal1.Visible = false;
            }
        }
    }
}