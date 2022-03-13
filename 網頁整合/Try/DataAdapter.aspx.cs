using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 網頁整合.Try
{
    public partial class DataAdapter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //1.連結資料庫
            using (SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["網頁整合DBConnectionString"].ConnectionString))
            {
                //2.執行
                using (SqlCommand command = new SqlCommand("SELECT * FROM [網頁整合DB].[dbo].[ProgrammingLanguage] ", connection))
                {
                    try
                    {
                        SqlDataAdapter da = new SqlDataAdapter(command);
                        DataSet ds = new DataSet();
                        da.Fill(ds);

                        //3.自由發揮
                        Literal1.Text = "";
                        int count = Convert.ToInt32(ds.Tables[0].Compute("count(PLID)", ""));
                        Literal1.Text = "總共"+ count + "資料";
                        //4.關閉資源
                        ds.Dispose();
                    }
                    catch (Exception ex)
                    {
                        Literal1.Text = ex.ToString();
                    }
                }
            }
        }
    }
}