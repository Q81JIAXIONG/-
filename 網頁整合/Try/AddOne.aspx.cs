using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 網頁整合
{
    public partial class AddOne : System.Web.UI.Page
    {
        int count = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack) 
            //{
            //    Session["count"] = 0;
            //    Label1.Text = Session["count"].ToString();
            //} 

            Session["count"] = 0;
            Label1.Text = Session["count"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //count = count + 1;
            //Label1.Text = count.ToString();

            Session["count"] = Convert.ToInt32(Session["count"]) + 1;
            Label1.Text = Session["count"].ToString();
        }
    }
}