using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 網頁整合.Try
{
    public partial class tryContorller : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write(RadioButtonList1.SelectedValue);
            Response.Write(DropDownList1.SelectedValue);
            //for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            //{
            //    if (CheckBoxList1.Items[i].Selected)
            //        Response.Write(CheckBoxList1.Items[i].Value);
            //}

            foreach (ListItem item in CheckBoxList1.Items)
            {
                if (item.Selected)
                    Response.Write(item.Value);
            }
        }
    }
}