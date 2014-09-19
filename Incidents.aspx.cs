using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Incidents : System.Web.UI.Page
{
    BAL_INC b = new BAL_INC();
    DataClassesIncidentDataContext db = new DataClassesIncidentDataContext();
    Incident incidentobj = new Incident();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            FillGridView();
        }
    }
    public void FillGridView()
    {
        var query = from inc in db.Incidents
                    select inc;
        GridView1.DataSource = query;
        GridView1.DataBind();
    }
    protected void BtnNew_Click(object sender, EventArgs e)
    {
       
    }
    protected void BtnInsert_Click(object sender, EventArgs e)
    {

        b.Titel_Inc = TextBox12.Text;
        b.Description = TextBox13.Text;
        b.Requester = TextBox23.Text;
        b.Incident_On = Convert.ToDateTime( TextBox14.Text);
        b.Level = TextBox8.Text;
        b.Start_Date =Convert.ToDateTime( TextBox15.Text);
        b.Due_Date =Convert.ToDateTime( TextBox16.Text);
        b.Estimated_Hour =Convert.ToInt32( TextBox17.Text);
        b.Project = TextBox18.Text;
        b.Inc_complited = TextBox19.Text;
        b.Engineer_Ids = Convert.ToInt32( TextBox20.Text);
        b.Assigned_To = TextBox21.Text;
        b.Testing_Team = TextBox22.Text;
        b.Reg_Insert(b);
        FillGridView();
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton imgbtn = (ImageButton)sender;
        this.ModalPopupExtender2.Show();
    }
}