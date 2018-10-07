using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebApplication7.app.code
{
    public class DBHelper
    {
        private static readonly string connStr = @"Data Source=LENOVO-PC\SQLEXPRESS;Initial Catalog=share ball;Integrated Security=True";

        private SqlConnection conn;
        private SqlCommand cmd;


        public SqlConnection getConn()
        {
            conn = new SqlConnection(connStr);
            return conn;
        }

        public int ExeInsert(string sql)
        {
            //OleDbCommand cmd = null;
            try
            {
                SqlConnection oleConn = getConn();
                cmd = new SqlCommand();
                cmd.Connection = oleConn;
                cmd.CommandText = sql;
                cmd.Connection.Open();
                int res = cmd.ExecuteNonQuery();
                return res;
            }

            finally
            {
                cmd.Connection.Close();
                cmd.Dispose();
            }
        }

        public SqlDataReader queryDb(string sql)
        {
            //OleDbCommand cmd = null;
            try
            {
                SqlConnection oleConn = getConn();
                cmd = new SqlCommand();
                cmd.Connection = oleConn;
                cmd.CommandText = sql;
                cmd.Connection.Open();
                return cmd.ExecuteReader();
            }

            finally
            {
                //cmd.Connection.Close();
                //cmd.Dispose();
            }
        }

        public DataTable queyDb(string sql)
        {
            //OleDbCommand cmd = null;
            try
            {
                SqlConnection oleConn = getConn();
                cmd = new SqlCommand();
                cmd.Connection = oleConn;
                cmd.CommandText = sql;
                cmd.Connection.Open();
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                adapter.Fill(dt);
                return dt;
            }
            catch (Exception e)
            {
                return null;
            }
            finally
            {
                //cmd.Connection.Close();
                //cmd.Dispose();
            }
        }

        public void closeDb()
        {
            cmd.Connection.Close();
            cmd.Dispose();
        }
    }
}