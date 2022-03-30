using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using 網頁整合.Model;

namespace 網頁整合.Authentication
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (account.Text != "" && password.Text != "")
            {
                //取資料
                User user = GetUser();
                if (user == null)
                {
                    Response.Write("帳號密碼錯誤");
                    return;
                }

                Session["LoginUser"] = user;
                Response.Redirect("..\\WebPage\\Home.aspx");
            }
            else
            {
                Response.Write("請輸入帳號密碼");
                return;
            }
        }

        private User GetUser()
        {
            //1.連結資料庫
            using (SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["網頁整合DBConnectionString"].ConnectionString))
            {
                //2.執行
                using (SqlCommand command = new SqlCommand("SELECT * FROM [網頁整合DB].[dbo].[User] WHERE Account = @Account AND PassWord = @PassWord", connection))
                {
                    connection.Open();
                    command.Parameters.Add("@Account", SqlDbType.VarChar);
                    command.Parameters.Add("@PassWord", SqlDbType.VarChar);

                    command.Parameters["@Account"].Value = account.Text;
                    command.Parameters["@PassWord"].Value = password.Text;

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        //3.自由發揮
                        if (reader.HasRows)
                        {
                            User user = new User();
                            while (reader.Read())
                            {
                                user.UserID = Convert.ToInt32(reader["UserID"]);
                                user.Name = reader["Name"].ToString();
                                user.Email = reader["Email"].ToString();
                                user.Account = reader["Account"].ToString();
                                user.RoleID = Convert.ToInt32(reader["RoleID"].ToString());
                            }
                            return user;
                        }
                        else
                        {
                            return null;
                        }
                        //4.關閉資源
                    }
                }
            }
        }
    }
}