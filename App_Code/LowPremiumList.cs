using System;
using System.Collections.Generic;
using System.Linq;
using System.Xml.Linq;

public class LowPremium
{
    public int MinValue { get; set; }
    public int MaxValue { get; set; }
    public int Premium { get; set; }
}

public class LowPremiumList : List<LowPremium>
{
    public void Load(string xmlFile)
    {
        XDocument doc = XDocument.Load(xmlFile);

        var query = from xElem in doc.Descendants("LowPremium")
                    select new LowPremium
                    {
                        MinValue = Convert.ToInt32(xElem.Element("MinValue").Value),
                        MaxValue = Convert.ToInt32(xElem.Element("MaxValue").Value),
                        Premium = Convert.ToInt32(xElem.Element("Premium").Value)
                    };

        Clear();
        AddRange(query);
    }
}