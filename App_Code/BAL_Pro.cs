using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;


public class BAL_Pro
{
    Dal_Pro d=new Dal_Pro();
    public int Po_No { get; set; }
    public string Titel { get; set; }
    public int Estimated_Hours { get; set; }
    public int Estimated_Cost { get; set; }
    public string Client { get; set; }
    public string Status { get; set; }
    public string Project_Type { get; set;}
    public string QA { get; set; }
    public string Approver { get; set;}
    public string Manager { get; set; }
    public DateTime Start_Date { get; set; }
    public DateTime End_date { get; set; }
    public string Team { get; set; }
    public string Site { get; set; }
    public string type { get; set; }
    
	public BAL_Pro()
	{
       
	}
    public void reg_insert(BAL_Pro b)
    {
        d.insert(b);
    }
    public void reg_Update(BAL_Pro b)
    {
        d.Update(b);
    }
}