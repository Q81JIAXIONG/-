using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 網頁整合.Try
{
    public partial class DataReader : System.Web.UI.Page
    {
        public string aa = "AAA";
        protected void Page_Load(object sender, EventArgs e)
        {
            //1.連結資料庫
            using (SqlConnection connection = new SqlConnection("Data Source=DESKTOP-VP7O62I\\SQLEXPRESS;Initial Catalog=網頁整合DB;Integrated Security=True"))
            {
                //2.執行
                using (SqlCommand command = new SqlCommand("SELECT * FROM [網頁整合DB].[dbo].[ProgrammingLanguage]",connection))
                {
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();

                    //3.自由發揮
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            Response.Write(reader["PLID"].ToString() + reader["language"].ToString() + "<br />");
                        }
                    }
                    else
                    {
                        Console.WriteLine("No rows found.");
                    }
                    //4.關閉資源
                    reader.Close();
                } 
            }
        }
    }
}