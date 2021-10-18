using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for State
/// </summary>
public class State
{
    public State(String abbr, String name)
    {
        this.Abbr = abbr;
        this.Name = name;
    }

    public String Abbr { get; private set; }
    public String Name { get; private set; }
}