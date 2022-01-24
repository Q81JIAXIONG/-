using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 網頁整合.Try
{
    public partial class ChangePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string[] s = new string[0];
            //s[1] = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = "我選擇一";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label1.Text = "我選擇二";
        }
    }
}