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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || TextBox2.Text == "")
            {
                Label1.Text = "*请输入用户名或密码！";
                //Response.Redirect("login.aspx");
            }
            else
            {
                DBHelper dh = new DBHelper();
                string username = TextBox1.Text.Trim();
                string password = TextBox2.Text.Trim();
                string sql = "select passwords from yh where username='" + username + "';";
                SqlDataReader reader = dh.queryDb(sql);
                if (reader.HasRows)
                {
                    reader.Read();
                    if (((string)reader[0]) == password)
                    {
                        Session["username"] = username;

                        Response.Redirect("share ball.html");
                    }
                    else
                    {
                        Label1.Text = "*用户名或密码错误！";
                    }
                }
                else
                {
                    Label1.Text = "*用户名或密码错误！";
                }

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");
        }
    }
}