using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class DAL_INC
{
    DataClassesIncidentDataContext db = new DataClassesIncidentDataContext();
    Incident incidentobj = new Incident();
	public DAL_INC()
	{
	}
    public void Insert(BAL_INC b)
    {
        incidentobj.Titel_Inc = b.Titel_Inc;
        incidentobj.Description = b.Description;
        incidentobj.Requester = b.Requester;
        incidentobj.Incident_On = b.Incident_On;
        incidentobj.Level = b.Level;
        incidentobj.Start_Date = b.Start_Date;
        incidentobj.Due_Date = b.Due_Date;
        incidentobj.Estimated_Hour = b.Estimated_Hour;
        incidentobj.Project = b.Project;
        incidentobj.Inc_complited = b.Inc_complited;
        incidentobj.Engineer_Ids = b.Engineer_Ids;
        incidentobj.Assigned_To = b.Assigned_To;
        incidentobj.Testing_Team = b.Testing_Team;
        db.Incidents.InsertOnSubmit(incidentobj);
        db.SubmitChanges();
    }
}