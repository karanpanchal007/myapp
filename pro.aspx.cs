using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using AjaxControlToolkit;

public partial class pro : System.Web.UI.Page
{
    BAL b = new BAL();
    BAL_Pro ba = new BAL_Pro();
    string connection = System.Configuration.ConfigurationManager.ConnectionStrings["project manConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGrid();
            FillStates();
            DdlMan.Items.Insert(0, "-----Select Manager----");
        }
    }

    private void BindGrid()
    {
        SqlConnection con = new SqlConnection(connection);
        SqlDataAdapter da = new SqlDataAdapter("select * from Project", con);
        DataSet ds = new DataSet();
        con.Open();
        da.Fill(ds);
        con.Close();
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton imgbtn = (ImageButton)sender;
        GridViewRow grv = (GridViewRow)imgbtn.NamingContainer;
        lblno.Text = grv.Cells[0].Text;
        TextBox1.Text=grv.Cells[2].Text;
        TextBox2.Text=grv.Cells[3].Text;
        TextBox3.Text=grv.Cells[4].Text;
        TextBox26.Text=grv.Cells[5].Text;
        TextBox4.Text=grv.Cells[6].Text;
        TextBox5.Text=grv.Cells[7].Text;
        TextBox6.Text=grv.Cells[8].Text;
        TextBox7.Text=grv.Cells[9].Text;
        DdlMan.SelectedValue=grv.Cells[10].Text;
        TextBox9.Text=grv.Cells[11].Text;
        TextBox10.Text=grv.Cells[12].Text;
        TextBox11.Text=grv.Cells[13].Text;
        texsite.Text=grv.Cells[14].Text;
        textype.Text=grv.Cells[15].Text;
        this.ModalPopupExtender1.Show();
    }
    protected void BtnNew_Click(object sender, EventArgs e)
    {
       
    }
    public void FillStates()
    {

        DataSet ds = new DataSet();
        ds = b.reg_getStates();
        DdlMan.DataSource = ds;
        DdlMan.DataTextField = ds.Tables[0].Columns["Manager"].ToString();
        //DdlMan.DataValueField = ds.Tables[0].Columns["Po_No"].ToString();
        DdlMan.DataBind();
    }
    protected void BtnInsert_Click(object sender, EventArgs e)
    {
        try
        {
            ba.Po_No = Convert.ToInt16(TextBox25.Text);
            ba.Titel = TextBox12.Text;
            ba.Estimated_Hours = Convert.ToInt32(TextBox13.Text);
            ba.Estimated_Cost = Convert.ToInt32(TextBox14.Text);
            ba.Client = TextBox8.Text;
            ba.Status = TextBox15.Text;
            ba.Project_Type = TextBox16.Text;
            ba.QA = TextBox17.Text;
            ba.Approver = TextBox18.Text;
            ba.Manager = TextBox19.Text;
            ba.Start_Date = Convert.ToDateTime(TextBox20.Text);
            ba.End_date = Convert.ToDateTime(TextBox21.Text);
            ba.Team = TextBox22.Text;
            ba.Site = TextBox23.Text;
            ba.type = TextBox24.Text;
            ba.reg_insert(ba);
            BindGrid();
        }
        catch { Response.Redirect("Error.aspx"); }
    }
    protected void BtnUpdate_Click(object sender, EventArgs e)
    {
        ba.Po_No = Convert.ToInt16(lblno.Text);
        ba.Titel = TextBox1.Text;
        ba.Estimated_Hours = Convert.ToInt32(TextBox2.Text);
        ba.Estimated_Cost = Convert.ToInt32(TextBox3.Text);
        ba.Client = TextBox26.Text;
        ba.Status = TextBox4.Text;
        ba.Project_Type = TextBox5.Text;
        ba.QA = TextBox6.Text;
        ba.Approver = TextBox7.Text;
        ba.Manager = DdlMan.SelectedValue;
        ba.Start_Date = Convert.ToDateTime(TextBox9.Text);
        ba.End_date = Convert.ToDateTime(TextBox10.Text);
        ba.Team = TextBox11.Text;
        ba.Site = texsite.Text;
        ba.type = textype.Text;
        ba.reg_Update(ba);
        BindGrid();
    }

  
    
}