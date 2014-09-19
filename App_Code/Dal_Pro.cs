using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public class Dal_Pro
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter da;
    DataSet ds;
    string connection = System.Configuration.ConfigurationManager.ConnectionStrings["project manConnectionString"].ConnectionString;
	public Dal_Pro()
	{
        con = new SqlConnection(connection);
	}
    public void insert(BAL_Pro b)
    {
        cmd = new SqlCommand("insert into Project values(@pid,@ttl,@esth,@estc,@cln,@sts,@pty,@qa,@apr,@man,@sdt,@edt,@tem,@sit,@typ)",con);
        cmd.Parameters.AddWithValue("@pid", b.Po_No);
        cmd.Parameters.AddWithValue("@ttl",b.Titel);
        cmd.Parameters.AddWithValue("@esth",b.Estimated_Hours);
        cmd.Parameters.AddWithValue("@estc",b.Estimated_Cost);
        cmd.Parameters.AddWithValue("@cln",b.Client);
        cmd.Parameters.AddWithValue("@sts",b.Status);
        cmd.Parameters.AddWithValue("@pty",b.Project_Type);
        cmd.Parameters.AddWithValue("@qa",b.QA);
        cmd.Parameters.AddWithValue("@apr",b.Approver);
        cmd.Parameters.AddWithValue("@man",b.Manager);
        cmd.Parameters.AddWithValue("@sdt",b.Start_Date);
        cmd.Parameters.AddWithValue("@edt",b.End_date);
        cmd.Parameters.AddWithValue("@tem",b.Team);
        cmd.Parameters.AddWithValue("@sit",b.Site);
        cmd.Parameters.AddWithValue("@typ",b.type);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }
    public void Update(BAL_Pro b)
    {
        cmd = new SqlCommand("Update Project set Titel=@ttl,Estimated_Hours=@esth,Estimated_Cost=@estc,Client=@cln,Status=@sts,Project_Type=@pty,QA=@qa,Approver=@apr,Manager=@man,Start_Date=@sdt,End_date=@edt,Team=@tem,Site=@sit,type=@typ where Po_No=@pid", con);
        
        cmd.Parameters.AddWithValue("@ttl", b.Titel);
        cmd.Parameters.AddWithValue("@esth", b.Estimated_Hours);
        cmd.Parameters.AddWithValue("@estc", b.Estimated_Cost);
        cmd.Parameters.AddWithValue("@cln", b.Client);
        cmd.Parameters.AddWithValue("@sts", b.Status);
        cmd.Parameters.AddWithValue("@pty", b.Project_Type);
        cmd.Parameters.AddWithValue("@qa", b.QA);
        cmd.Parameters.AddWithValue("@apr", b.Approver);
        cmd.Parameters.AddWithValue("@man", b.Manager);
        cmd.Parameters.AddWithValue("@sdt", b.Start_Date);
        cmd.Parameters.AddWithValue("@edt", b.End_date);
        cmd.Parameters.AddWithValue("@tem", b.Team);
        cmd.Parameters.AddWithValue("@sit", b.Site);
        cmd.Parameters.AddWithValue("@typ", b.type);
        cmd.Parameters.AddWithValue("@pid", b.Po_No);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }
}