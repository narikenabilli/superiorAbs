<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="InsuranceCalculator.aspx.cs" Inherits="InsuranceCalculator" %>

<%@ Register TagPrefix="custom" TagName="InsuranceForm" Src="~/Controls/InsuranceForm.ascx" %>



<asp:Content ID="PrimaryContent" ContentPlaceHolderID="contentPlaceHolders" Runat="Server">
      <div class="page clearfix">
		<div class="whiteBg">
			<div class="wrap fullContent clearfix">
	<h1>Texas Title Insurance Calculator</h1>
	
	<a name="bCalculator" id="bCalculator"></a>
	<div id="tabs">
		<ul>
			<li><a href="#tabs-1">Home Equity Loan</a></li>
			<li><a href="#tabs-2">Refinance</a></li>
		</ul>
		<div id="tabs-1">
			<asp:UpdatePanel ID="HomeEquityLoanUpdatePanel" runat="server">
				<ContentTemplate>
					<custom:InsuranceForm ID="HomeEquityLoanForm" runat="server" CalculatorType="HomeEquityLoan" />
				</ContentTemplate>
			</asp:UpdatePanel>
		</div>
		<div id="tabs-2">
			<asp:UpdatePanel ID="RefinanceUpdatePanel" runat="server">
				<ContentTemplate>
					<custom:InsuranceForm ID="RefinanceForm" runat="server" CalculatorType="Refinance" />
				</ContentTemplate>
			</asp:UpdatePanel>
		</div>
	</div>

	<div id="disclaimer">
		<a name="bDisclaimer"></a>* Although Superior Abstract and Title works hard to ensure that the title insurance rates, closing costs, recording fees and other information made available on our website site are reasonably accurate and reliable, ALL SUCH INFORMATION IS NOT WARRANTED OR GUARANTEED and may be subject to other terms and conditions. Superior Abstract and Title does not assume responsibility for the relevance, accuracy, timeliness, correctness, or completeness of the information presented on our website, and any information presented is not intended nor should it be construed as legal or financial advice to any party. The results provided by our calculators are intended for hypothetical, illustrative, and comparative purposes only. The use of this calculator or any of Superior Abstract and Title’s calculators is not intended to offer any legal or financial advice. ALL RATE CALCULATION INFORMATION AND QUOTES PROVIDED BY OUR SITE ARE WITHOUT REPRESENTATION OR WARRANTY AS TO THEIR RELEVANCE, ACCURACY, CORRECTNESS, OR COMPLETENESS. Please contact a Superior Abstract and Title escrow officer to confirm cost information regarding your specific service need. Settlement fees disclosed on the HUD-1 at closing may include multiple Superior Abstract and Title fees, subject to state and federal regulation. Your Superior Abstract and Title escrow officer can explain any requirements resulting in such fee combinations. <a href="#bCalculator">Back to calculator</a>
	</div>
                </div>
            </div>
          </div>
</asp:Content>