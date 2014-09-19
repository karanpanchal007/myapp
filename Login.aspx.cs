using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Login : System.Web.UI.Page
{

    BAL b = new BAL();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        Session["un"] = txtun.Text;
        b.UN = txtun.Text;
        b.Pass = txtpassword.Text;
        DataTable dt = new DataTable();
        dt = b.reg_getUNPass(b);
        if (dt.Rows.Count > 0)
        {
            Response.Redirect("pro.aspx");
        }
        else
        {
            lblmsg.Text = "Invalid UserName or Password";
        }
    }
}