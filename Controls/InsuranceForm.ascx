<%@ Control Language="C#" AutoEventWireup="true" CodeFile="InsuranceForm.ascx.cs" Inherits="Controls_InsuranceForm" %>

<%@ Register TagPrefix="custom" TagName="EndorsementsAndFees" Src="~/Controls/EndorsementsAndFees.ascx" %>

<h2><asp:Literal ID="CalculatorTitleLiteral" runat="server" /></h2>
<br />
<br />

<div class="clearfix" id="calculatorInfo">
	<div class="calculatorInputs">
		<asp:Panel ID="FormPanel" runat="server">
			<asp:Label id="EstimatedClosingDateLabel" runat="server" text="Estimated Closing Date" AssociatedControlID="EstimatedClosingDateTextbox" />
			<asp:Textbox id="EstimatedClosingDateTextbox" runat="server" /> <small>(mm/dd/yyyy)</small>
			<asp:CompareValidator ID="EstimatedClosingDateCompareValidator" runat="server" ControlToValidate="EstimatedClosingDateTextbox" Type="Date" Operator="DataTypeCheck" Text="*" ErrorMessage="You must enter a valid date" /><br /><br />

			<asp:Label ID="NewLoanAmountLabel" runat="server" Text="New Loan Amount *" AssociatedControlID="NewLoanAmountTextbox" />
			<asp:TextBox ID="NewLoanAmountTextbox" runat="server" /><br />
			<asp:RequiredFieldValidator ID="NewLoanAmountRequiredFieldValidator" ControlToValidate="NewLoanAmountTextbox" runat="server" Text="Loan Amount Required" ErrorMessage="Loan Amount Required" CssClass="valError" SetFocusOnError="true"  Display="Dynamic" />
			
			<asp:CompareValidator ID="NewLoanAmountCompareValidator" runat="server" ControlToValidate="NewLoanAmountTextbox" Type="Double" Operator="DataTypeCheck" Text="New Loan Amount must be in the form of a decimal (numbers only)" CssClass="valError" ErrorMessage="New Loan Amount must be in the form of a decimal" /><br /><br />

			<asp:Label ID="ExistingPayoffAmountLabel" runat="server" Text="Existing Payoff Amount" AssociatedControlID="ExistingPayoffAmountTextbox" />
			<asp:TextBox ID="ExistingPayoffAmountTextbox" runat="server" /><br /><br />

			<asp:Label ID="ExistingLoanCloseDateLabel" runat="server" Text="Date Existing Loan Recorded" AssociatedControlID="ExistingLoanCloseDateTextbox" />
			<asp:TextBox ID="ExistingLoanCloseDateTextbox" runat="server" /> <small>(mm/dd/yyyy)</small>
			<asp:CompareValidator ID="ExistingLoanCloseDateCompareValidator" runat="server" ControlToValidate="ExistingLoanCloseDateTextbox" Type="Date" Operator="DataTypeCheck" Text="*" ErrorMessage="You must enter a valid date" /><br /><br />

			<asp:Button ID="CalculateButton" runat="server" Text="Calculate" OnClick="CalculateButton_Click" /><br />
			(<a href="#bDisclaimer">Disclaimer</a>)
		</asp:Panel>
		<hr />
		<asp:Panel ID="ResultsPanel" runat="server">
			<asp:Label ID="PwocLabel" runat="server" Text="Premium without Credit or Endorsements:" />
			<asp:Label ID="PwocValueLabel" runat="server" CssClass="resultValue" />
			<br />
			<br />
			<asp:Label ID="EndorsementsLabel" runat="server" Text="Total Endorsements:" />
			<asp:Label ID="EndorsementsValueLabel" runat="server" CssClass="resultValue" />
			<br />
			<br />
			<asp:Label ID="CreditLabel" runat="server" Text="Credit:" />
			<asp:Label ID="CreditValueLabel" runat="server" CssClass="resultValue" />
			<br />
			<br />
			<asp:Label ID="EstimatedPremiumLabel" runat="server" Text="Estimated New Premium:" />
			<asp:Label ID="EstimatedPremiumValueLabel" runat="server" CssClass="resultValue" />
			<br />
			<br />
			<asp:Label ID="TitleCoChargesLabel" runat="server" Text="Title Company Charges:" />
			<asp:Label ID="TitleCoChargesValueLabel" runat="server" CssClass="resultValue" />
			<br />
			<br />
			<asp:Label ID="EstimatedTotalLabel" runat="server" Text="Estimated Total Charges:" />
			<asp:Label ID="EstimatedTotalValueLabel" runat="server" CssClass="resultValue" />
			<br />
			<br />
			<asp:Button ID="ShowFormButton" runat="server" Text="Email My Quote" OnClick="ShowFormButton_Click" Visible="False" /><br />
		</asp:Panel>
		<hr />		
	</div>
	<div class="endorsements">
		<custom:EndorsementsAndFees ID="EndorsementsAndFees" runat="server" />
	</div>
</div>
<div class="clearfix" >
	<div class="calculatorInputs">
	<asp:Panel ID="EmailFormPanel" runat="server" Visible="False">
		<table style="padding:5px">
		<tr >
		<td style="padding:5px"><asp:Label id="EmailFirstName" runat="server" text="First Name*" AssociatedControlID="EmailFirstNameTextbox" />
		</td>
		<td style="padding:5px"><asp:Textbox id="EmailFirstNameTextbox" runat="server" /></td>
		<td style="padding:5px"></td>
		</tr>
		<tr>
		<td style="padding:5px"><asp:Label id="EmailLastName" runat="server" text="Last Name" AssociatedControlID="EmailLastNameTextbox" />
		</td>
		<td style="padding:5px"><asp:Textbox id="EmailLastNameTextbox" runat="server"  /></td>
		<td style="padding:5px"></td>
		</tr>
		<tr>
		<td style="padding:5px"><asp:Label id="ContactPhoneNumber" runat="server" text="Phone Number" AssociatedControlID="ContactPhoneNumberTextbox" />
		</td>
		<td style="padding:5px"><asp:Textbox id="ContactPhoneNumberTextbox" runat="server" /></td>
		<td style="padding:5px"></td>
		</tr>
		<tr>
		<tr>
		<td style="padding:5px">
		</td>
		<td style="padding:5px"><asp:CheckBox id="ChkRequestACall" runat="server" /> Request a call
		<tr>
		<tr>
		<td style="padding:5px"><asp:Label id="EmailId" runat="server" text="Email*" AssociatedControlID="EmailIdTextbox" />
		</td>
		<td style="padding:5px"><asp:Textbox id="EmailIdTextbox" runat="server" />
		<br />
		<br />
		<asp:RequiredFieldValidator ID="EmailIdTextboxRequiredFieldValidator" ControlToValidate="EmailIdTextbox" runat="server" ErrorMessage="Email is required" SetFocusOnError="true" CssClass="valError" Display="Dynamic"/>

		<asp:RegularExpressionValidator ID="remail" runat="server" ControlToValidate="EmailIdTextbox" ErrorMessage="Enter your valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" SetFocusOnError="true" CssClass="valError" Display="Dynamic">
         </asp:RegularExpressionValidator>
		
		
		</td>
		<td style="padding:5px">		
		</td>
		</tr>
		<tr>
		<td style="padding:5px">
			<asp:Button ID="SendEmailButton" Enabled="False" runat="server" Text="Send" OnClick="SendEmailButton_Click" />
		</td>
		<td></td>
		<td></td>
		</tr>
		</tr>
		<tr>
		<td><asp:Textbox id="pdfblob" runat="server" TextMode="MultiLine" style="display:none"></asp:Textbox>
		</td>
		<td style="padding:5px"><asp:Label id="EmailSentStatus" runat="server" text="" Visible="False" /></td>
		<td></td>
		</tr>
			
		</table>
			
		</asp:Panel>
	</div>
</div>
