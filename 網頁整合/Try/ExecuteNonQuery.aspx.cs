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
    public partial class ExecuteNonQuery : System.Web.UI.Page
    {
        SqlConnection _connection = null;
        public ExecuteNonQuery()
        {
            _connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["網頁整合DBConnectionString"].ConnectionString);
        }
        protected void 新增_Click(object sender, EventArgs e)
        {
            //1.連結資料庫
            //2.執行
            using (SqlCommand command = new SqlCommand("INSERT INTO [網頁整合DB].[dbo].[ProgrammingLanguage] VALUES(@PLID, @language)", _connection))
            {
                _connection.Open();
                command.Parameters.Add("@PLID", SqlDbType.Int);
                command.Parameters.Add("@language", SqlDbType.VarChar);
                command.Parameters["@PLID"].Value = TextBox1.Text;
                command.Parameters["@language"].Value = TextBox2.Text;

                int count = command.ExecuteNonQuery();

                //3.自由發揮

                //4.關閉資源
                _connection.Close();
                //_connection.Dispose();
            }
        }
        protected void Page_LoadComplete(object sender, EventArgs e)
        {
            //1.連結資料庫
            //2.執行
            using (SqlCommand command = new SqlCommand("SELECT * FROM [網頁整合DB].[dbo].[ProgrammingLanguage] ", _connection))
            {
                _connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                Literal1.Text = "";
                //3.自由發揮
                if (reader.HasRows)
                {
                    StringBuilder sb = new StringBuilder();

                    sb.Append("<table>");
                    sb.Append("<tr>");
                    sb.Append("<td>PLID</td>");
                    sb.Append("<td>language</td>");
                    sb.Append("</tr>");
                    while (reader.Read())
                    {
                        sb.Append("<tr>");
                        sb.Append("<td>" + reader["PLID"].ToString() + "</td>");
                        sb.Append("<td>" + reader["language"].ToString() + "</td>");
                        sb.Append("</tr>");
                    }
                    sb.Append("</table>");
                    Literal1.Text = sb.ToString();
                }
                else
                {
                    Console.WriteLine("No rows found.");
                }
                //4.關閉資源
                reader.Close();
                _connection.Close();
            }
        }

        protected void Page_Unload(object sender, EventArgs e)
        {
            _connection.Close();
            _connection.Dispose();
        }
    }
}