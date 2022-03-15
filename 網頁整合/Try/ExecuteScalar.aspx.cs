using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 網頁整合.Try
{
    public partial class ExecuteScalar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //1.連結資料庫
            using (SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["網頁整合DBConnectionString"].ConnectionString))
            {
                //2.執行
                using (SqlCommand command = new SqlCommand("SELECT * FROM [網頁整合DB].[dbo].[ProgrammingLanguage] ", connection))
                {
                    connection.Open();
                    object obj = command.ExecuteScalar();

                    //3.自由發揮
                    Literal1.Text = obj.ToString();

                    //4.關閉資源
                }
            }
        }
    }
}