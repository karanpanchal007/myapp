using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

public class BAL
{
    DAL d = new DAL();

    public string UN{ get; set; }
    public string Pass{ get; set; }
    public int Po_No { get; set; }

    public BAL()
    {

    }

    public DataTable reg_getUNPass(BAL b)
    {
        return d.getUNPass(b);
    }
    public DataSet reg_getStates()
    {
        return d.getStates();
    }
}