using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 網頁整合.Try
{
    public partial class DigitalComputing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void calculate_Click(object sender, EventArgs e)
        {
            float n1 , n2 ;
            if (Single.TryParse(number1.Text, out n1) && Single.TryParse(number2.Text, out n2))
            {
                result.Text = 
                    operatorDDL.SelectedValue == "+" ? (n1 + n2).ToString() : 
                    operatorDDL.SelectedValue == "-" ? (n1 - n2).ToString() :
                    operatorDDL.SelectedValue == "*" ? (n1 * n2).ToString() :
                    (n1 / n2).ToString();

                equal.Text = "=";
            }
            else 
            {
                equal.Text = "";
                result.Text = "輸入的資料不符合格式";
            }    
        }
    }
}