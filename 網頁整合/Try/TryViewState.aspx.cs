using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 網頁整合.Try
{
    public partial class ViewState : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ViewState["Try"] = TextBox1.Text;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (ViewState["Try"] != null)
            {
                Literal1.Visible = true;
                Label1.Text = ViewState["Try"].ToString();
            }
            else
            {
                Literal1.Visible = false;
            }
        }
    }
}