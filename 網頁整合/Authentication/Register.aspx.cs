using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 網頁整合.Authentication
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            dynamic a = "";
            a = 123;
            a = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string errmeg = CheckData();
            //檢查資料內容
            if (errmeg != "")
            {
                Response.Write(errmeg);
                return;
            }

            //檢查有無重複註冊
            errmeg = CheckRepeatAccount();
            if (errmeg != "")
            {
                Response.Write(errmeg);
                return;
            }

            //檢查有無重複信箱
            errmeg = CheckRepeatEmail();
            if (errmeg != "")
            {
                Response.Write(errmeg);
                return;
            }

            //寫入註冊資料
            if (!InsertData())
            {
                Response.Write("資料寫入失敗");
                return;
            }
            Response.Redirect("Login.aspx");
        }
        private string CheckData()
        {
            string errmeg = "";

            if (!Regex.IsMatch(account.Text, "^[a-zA-Z0-9]{6,20}$"))//帳號6~20字元、必須是英文或數字
                errmeg += "帳號必須英文或數字且6~20字元<br />";

            if (!(name.Text.Length >= 3 && name.Text.Length <= 20))//姓名3~20字元以內
                errmeg += "姓名字數要在3~20字<br />";

            if (sexRadioButtonList.SelectedValue != "True" && sexRadioButtonList.SelectedValue != "False")//性別必須為0或1
                errmeg += "性別資料有誤" + sexRadioButtonList.SelectedValue + "<br />";

            if (!Regex.IsMatch(email.Text, @"^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z]+$"))//信箱必須為信箱格式、
                errmeg += "email格式有誤<br />";

            if (!(email.Text.Length <= 20))// 信箱必須20字元以內
                errmeg += "email字數要在20字元以內<br />";

            if (!Regex.IsMatch(educationDropDownList.SelectedValue, "^[1-7]$"))//學歷必須為1~7整數
                errmeg += "學歷資料有誤<br />";

            foreach (ListItem item in LanguageCheckBoxList.Items)
            {
                if (item.Selected && !Regex.IsMatch(item.Value, "^[1-5]$"))//擅長程式語言可沒選、有選必須為1~5整數
                {
                    errmeg += "擅長程式語言資料有誤<br />";
                    break;
                }
            }

            if (!Regex.IsMatch(password.Text, @"^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,30}$"))//密碼英文大小寫+數字、至少8碼
                errmeg += "密碼必須至少1個數字、一個小寫英文字、一個大些英文字及長度要在8~30個字元<br />";

            if (password.Text != repassword.Text)//密碼與重新輸入密碼必須一致
                errmeg += "密碼與重新輸入密碼不一致<br />";

            return errmeg;
        }
        private string CheckRepeatAccount()
        {
            string returnstring = "";
            //1.連結資料庫
            using (SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["網頁整合DBConnectionString"].ConnectionString))
            {
                //2.執行
                using (SqlCommand command = new SqlCommand("SELECT count(1)count FROM [網頁整合DB].[dbo].[User] WHERE Account = @Account", connection))
                {
                    command.Parameters.Add("@Account", SqlDbType.VarChar);
                    command.Parameters["@Account"].Value = account.Text;

                    connection.Open();
                    object obj = command.ExecuteScalar();

                    //3.自由發揮
                    if (Convert.ToInt32(obj) > 0)
                        returnstring = "此帳號已有註冊";
                    return returnstring;

                    //4.關閉資源
                }
            }
        }
        private string CheckRepeatEmail()
        {
            string returnstring = "";
            //1.連結資料庫
            using (SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["網頁整合DBConnectionString"].ConnectionString))
            {
                //2.執行
                using (SqlCommand command = new SqlCommand("SELECT count(1)count FROM [網頁整合DB].[dbo].[User] WHERE Email = @Email", connection))
                {
                    command.Parameters.Add("@Email", SqlDbType.VarChar);
                    command.Parameters["@Email"].Value = email.Text;

                    connection.Open();
                    object obj = command.ExecuteScalar();

                    //3.自由發揮
                    if (Convert.ToInt32(obj) > 0)
                        returnstring = "此信箱已有註冊";
                    return returnstring;

                    //4.關閉資源
                }
            }
        }
        private bool InsertData()
        {
            int identity = InsertUserData();//插入User資料

            if (identity == 0)
                return false;

            if (LanguageCheckBoxList.Items.Count == 0)
                return true;

            return InsertUserPLData(identity);
        }
         
        private int InsertUserData()
        {
            string commandstring =
@"INSERT INTO [網頁整合DB].[dbo].[User]([Name],[SexID],[Email],[Account],[PassWord],[RoleID],[EducationID]) 
VALUES(@Name, @SexID,@Email,@Account,@PassWord,@RoleID,@EducationID)
SELECT @identity = scope_identity()";

            try
            {
                //1.連結資料庫
                using (SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["網頁整合DBConnectionString"].ConnectionString))
                {
                    //2.執行
                    using (SqlCommand command = new SqlCommand(commandstring, connection))
                    {
                        connection.Open();
                        command.Parameters.Add("@Name", SqlDbType.NVarChar);
                        command.Parameters.Add("@SexID", SqlDbType.Bit);
                        command.Parameters.Add("@Email", SqlDbType.VarChar);
                        command.Parameters.Add("@Account", SqlDbType.VarChar);
                        command.Parameters.Add("@PassWord", SqlDbType.VarChar);
                        command.Parameters.Add("@RoleID", SqlDbType.TinyInt);
                        command.Parameters.Add("@EducationID", SqlDbType.TinyInt);

                        command.Parameters["@Name"].Value = name.Text;
                        command.Parameters["@SexID"].Value = sexRadioButtonList.SelectedValue;
                        command.Parameters["@Email"].Value = email.Text;
                        command.Parameters["@Account"].Value = account.Text;
                        command.Parameters["@PassWord"].Value = password.Text;
                        command.Parameters["@RoleID"].Value = "1";
                        command.Parameters["@EducationID"].Value = educationDropDownList.SelectedValue;

                        command.Parameters.Add("@identity", SqlDbType.Int);
                        command.Parameters["@identity"].Direction = ParameterDirection.Output;

                        command.ExecuteNonQuery();
                        int identity = Convert.ToInt32(command.Parameters["@identity"].Value);
                        //3.自由發揮
                        return identity;
                        //4.關閉資源
                    }
                }
            }
            catch (Exception) { return 0; }
        }

        private bool InsertUserPLData(int identity)
        {
            try
            {
                //1.連結資料庫
                using (SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["網頁整合DBConnectionString"].ConnectionString))
                {
                    //2.執行
                    using (SqlCommand command = new SqlCommand("INSERT INTO [網頁整合DB].[dbo].[UserPL]([UserID],[PLID]) VALUES(@UserID, @PLID)", connection))
                    {
                        connection.Open();
                        command.Parameters.Add("@UserID", SqlDbType.Int);
                        command.Parameters.Add("@PLID", SqlDbType.TinyInt);

                        command.Parameters["@UserID"].Value = identity;

                        foreach (ListItem item in LanguageCheckBoxList.Items)
                        {
                            if (item.Selected)
                            {
                                command.Parameters["@PLID"].Value = item.Value;
                                command.ExecuteNonQuery();
                            }
                        }
                        //3.自由發揮
                        return true;
                        //4.關閉資源
                    }
                }
            }
            catch (Exception) { return false; }
        }
    }
}