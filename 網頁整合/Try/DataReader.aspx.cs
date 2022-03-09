using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 網頁整合.Try
{
    public partial class DataReader : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            //1.連結資料庫
            using (SqlConnection connection = new SqlConnection("Data Source=DESKTOP-VP7O62I\\SQLEXPRESS;Initial Catalog=網頁整合DB;Integrated Security=True"))
            {
                //2.執行
                using (SqlCommand command = new SqlCommand("SELECT * FROM [網頁整合DB].[dbo].[ProgrammingLanguage] WHERE language = '"+ TextBox1.Text+"'" , connection))
                {
                    connection.Open();
                    //command.Parameters.Add("@language", SqlDbType.VarChar);
                    //command.Parameters["@language"].Value = TextBox1.Text;

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
                            sb.Append("<td>"+ reader["PLID"].ToString() + "</td>");
                            sb.Append("<td>"+ reader["language"].ToString() + "</td>");
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
                } 
            }
        }
    }
}