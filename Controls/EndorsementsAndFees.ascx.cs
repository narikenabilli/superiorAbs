using System;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_EndorsementsAndFees : UserControl
{
    public CalcType CalculatorType
    {
        get { return ViewState["CalculatorType"] == null ? CalcType.Refinance : (CalcType) ViewState["CalculatorType"]; }
        set { ViewState["CalculatorType"] = value; }
    }

    public CheckBoxList CommonEndorsements
    {
        get { return EndorsementsCheckBoxList; }
    }

    public CheckBoxList TitleCompanyCharges
    {
        get { return TitleCompanyCostsCheckBoxList; }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        switch (CalculatorType)
        {
            case CalcType.Refinance:
                EndorsementsCheckBoxList.Items.Remove(EndorsementsCheckBoxList.Items.FindByText("T-42 Home Equity Endorsement"));
                EndorsementsCheckBoxList.Items.Remove(EndorsementsCheckBoxList.Items.FindByText("T-42.1 Home Equity Supplemental"));
				
					
				ListItem wireFeeListItem = TitleCompanyCostsCheckBoxList.Items.FindByText("Wire Fee - $14");
				if (wireFeeListItem != null)
                {
                    wireFeeListItem.Value = "$22.00";
                    wireFeeListItem.Text = wireFeeListItem.Text.Replace("$14", "$22");
                }
				
				ListItem eFileListItem = TitleCompanyCostsCheckBoxList.Items.FindByText("eFile - $6.40");
				if (eFileListItem != null)
                {
                    eFileListItem.Value = "$3.2";
                    eFileListItem.Text = eFileListItem.Text.Replace("$6.40", "$3.20");
                }
                break;

            case CalcType.HomeEquityLoan:
                ListItem recordingFeeListItem = TitleCompanyCostsCheckBoxList.Items.FindByText("Estimated Recording Fee (Deed of Trust) - $108");
                if (recordingFeeListItem != null)
                {
                    recordingFeeListItem.Value = "$150.00";
                    recordingFeeListItem.Text = recordingFeeListItem.Text.Replace("Trust", "Trust & Affidavit").Replace("$108", "$150");
                }
			

                ListItem eFileListItem2 = TitleCompanyCostsCheckBoxList.Items.FindByText("eFile - $3.20");
				if (eFileListItem2 != null)
                {
                    eFileListItem2.Value = "$6.4";
                    eFileListItem2.Text = eFileListItem2.Text.Replace("$3.20", "$6.40");
                }

                break;
        }
    }
}