using System;
using System.Web;
using System.Web.UI;
 
	
public partial class InsuranceCalculator : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(this.Request.RawUrl.Contains("InsuranceCalculator.aspx"))
		Response.Redirect("~/InsuranceCalculatorNew.aspx");

		if (!Page.ClientScript.IsClientScriptIncludeRegistered("jsPDF"))
    Page.ClientScript.RegisterClientScriptInclude("jsPDF",Page.ResolveUrl("~/js/jsPDF.js"));		
    }
}