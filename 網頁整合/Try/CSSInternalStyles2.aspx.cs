using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 網頁整合.Try
{
    public partial class CSSInternalStyles2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            string ytclass = youtube.CssClass ,fbclass = facebook.CssClass,lclass = line.CssClass, tclass = "";

            tclass = ytclass;
            youtube.CssClass = fbclass;
            facebook.CssClass = lclass;
            line.CssClass = tclass;
        }
    }
}