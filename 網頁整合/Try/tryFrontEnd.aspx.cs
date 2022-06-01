using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 網頁整合.Try
{
    public partial class tryFrontEnd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            dynamic v1 = "123";
            Response.Write(v1.GetType()+"<br />");
            v1 = 123;
            Response.Write(v1.GetType());
        }
    }
}