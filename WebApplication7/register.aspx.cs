using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication7.app.code;

namespace WebApplication7
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "")
            {
                Label1.Text = "请输入用户名或密码！！";

            }
            else
            {
                //检查用户名是否存在
                string username = TextBox1.Text.Trim();
                DBHelper dh = new DBHelper();
                string sql = "select username from yh where username='" + username + "'";
                SqlDataReader reader = dh.queryDb(sql);
                if (reader.HasRows)
                {
                    //reader.Read();
                    Label1.Text = ("用户名已存在！！！");

                }
                else
                {
                    if (TextBox2.Text != TextBox3.Text)
                    {
                        Label1.Text = "二次密码不一致，请重新输入！";
                        TextBox2.Text = "";
                        TextBox3.Text = "";
                    }
                    else
                    {
                        //DBHelper dh = new DBHelper();
                        string username1 = TextBox1.Text.Trim();//去掉空格
                        string password = TextBox3.Text.Trim();
                        string sql1 = "insert into [yh] (username,passwords) values ('" + username1 + "','" + password + "')";
                        int res = dh.ExeInsert(sql1);
                        if (res > 0)
                        {
                            Label1.Text = "注册成功！！";
                        }
                        else
                        {
                            Label1.Text = "注册失败！";
                        }
                    }
                }

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}