using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class BAL_INC
{
    DAL_INC d = new DAL_INC();
    public string Titel_Inc { get; set; }
    public string Description { get; set; }
    public string Requester { get; set; }
    public DateTime Incident_On { get; set; }
    public string Level { get; set; }
    public DateTime Start_Date { get; set; }
    public DateTime Due_Date { get; set; }
    public int Estimated_Hour { get; set; }
    public string Project { get; set; }
    public string Inc_complited { get; set; }
    public int Engineer_Ids { get; set; }
    public string Assigned_To { get; set; }
    public string Testing_Team { get; set; }

	public BAL_INC()
	{
		
	}
    public void Reg_Insert(BAL_INC b)
    {
         d.Insert(b);
    }
}