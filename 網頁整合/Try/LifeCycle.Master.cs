using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 網頁整合.Try
{
    public partial class LifeCycle : System.Web.UI.MasterPage
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            Response.Write("MasterPage_Init<br>");
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("MasterPage_Load<br>");
        }
        protected void Page_PreRender(object sender, EventArgs e)
        {
            Response.Write("MasterPage_PreRender<br>");
        }
    }
}