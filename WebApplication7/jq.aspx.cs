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
    public partial class jq : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || TextBox2.Text == "")
            {
                Label1.Text = "请输入篮球编号或用户名！！";

            }
            else
            {
                //检查用户名是否存在
                string ID = TextBox1.Text.Trim();
                string username = TextBox2.Text.Trim();
                DBHelper dh = new DBHelper();
                string sql = "select username from yh where username='" + username + "'";
                string sql1 = "select id from xclq where id='" + ID + "'";
                SqlDataReader reader = dh.queryDb(sql);
                SqlDataReader reader1 = dh.queryDb(sql1);
                if (reader.HasRows&&reader1.HasRows)
                {
                    string sql2 = "insert into [yjlq] (lqid,username) values ('" + ID + "','" + username + "')";
                    string sql3 = "delete from xclq where id='" + ID + "'";
                    int res = dh.ExeInsert(sql2);
                    int res1 = dh.ExeInsert(sql3);
                    if (res > 0&&res1>0)
                    {
                        Response.Write("<script>alert('借球成功')</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('借球失败')</script>");
                    }
                }
                else
                {
                    //reader.Read();
                    Response.Write("<script>alert('用户名或篮球编号错误')</script>");
                }

            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox3.Text == "" )
            {
                Response.Write("<script>alert('请输入用户名')</script>");
            }
            else
            {
                string username1 = TextBox3.Text.Trim();
                DBHelper dh1 = new DBHelper();
                string sql4 = "select username from yjlq where username='" + username1 + "'";
                SqlDataReader reader2 = dh1.queryDb(sql4);
                if (reader2.HasRows)
                {
                    string sql6 = "delete from yjlq where username='" + username1 + "'";
                    string sql5 = "insert into xclq(id) select lqid from yjlq where username='" + username1 + "'";
                    int res2 = dh1.ExeInsert(sql5);
                    int res3 = dh1.ExeInsert(sql6);
                    if (res2 > 0 && res3 > 0)
                    {
                        Response.Write("<script>alert('还球成功')</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('还球失败')</script>");
                    }
                }
                else
                {
                    //reader.Read();
                    Response.Write("<script>alert('用户名错误')</script>");
                }
                }
            }
        }
    }

