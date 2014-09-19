using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public class DAL
{
    string connection = System.Configuration.ConfigurationManager.ConnectionStrings["project manConnectionString"].ConnectionString;
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter da;
    DataTable dt;
    DataSet ds;

    public DAL()
    {
        con = new SqlConnection(connection);
    }

    public DataTable getUNPass(BAL b)
    {
        string cmdtext = "Select * from tblLogin where UserName=@un and Password=@pass";
        cmd = new SqlCommand(cmdtext, con);
        cmd.Parameters.AddWithValue("@un", b.UN);
        cmd.Parameters.AddWithValue("@pass", b.Pass);
        da = new SqlDataAdapter(cmd);
        dt = new DataTable();
        da.Fill(dt);
        return dt;
    }
    public DataSet getStates()
    {
        cmd = new SqlCommand("select Project.Manager from Project", con);
        da = new SqlDataAdapter(cmd);
        ds = new DataSet();
        da.Fill(ds);
        return ds;
    }
}