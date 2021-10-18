<%@ Control Language="C#" AutoEventWireup="true" CodeFile="EndorsementsAndFees.ascx.cs" Inherits="Controls_EndorsementsAndFees" %>

<asp:Panel ID="EndorsementsPanel" runat="server" CssClass="calcInputs">
	Endorsements:
	<br />
	<br />
	<asp:CheckBoxList ID="EndorsementsCheckBoxList" runat="server" RepeatLayout="Flow">
		<asp:ListItem Text="T-17 PUD Endorsement" Value="$25.00" />
		<asp:ListItem Text="T-19 Survey/Mineral Coverage" Value="5%" Selected="True" />
		<asp:ListItem Text="T-19.2 Minerals and Surface Damage" Value="$50.00" />
		<asp:ListItem Text="T-30 Tax Deletion" Value="$20.00" Selected="True" Enabled="false" />
		<asp:ListItem Text="Not Due &amp; Payable" Value="$5.00" Selected="True" Enabled="false" />
		<asp:ListItem Text="T-33 ARM Endorsement" Value="$25.00" />
		<asp:ListItem Text="T-36 EPL Endorsement" Value="$25.00" Selected="True" Enabled="false" />
		<asp:ListItem Text="T-39 Balloon ($25.00)" Value="$25.00" Selected="True" Enabled="false" />
		<asp:ListItem Text="T-42 Home Equity Endorsement" Value="10%" Selected="True" Enabled="false" />
		<asp:ListItem Text="T-42.1 Home Equity Supplemental" Value="15%" Selected="True" Enabled="false" />
	</asp:CheckBoxList>
</asp:Panel>
<hr />
<asp:Panel ID="TitleCompanyCostsPanel" runat="server"  CssClass="calcInputs">
	Title Company Costs:
	<br />
	<br />
	<asp:CheckBoxList ID="TitleCompanyCostsCheckBoxList" runat="server" RepeatLayout="Flow">
		<asp:ListItem Text="Settlement Escrow Fee - $350" Value="$350.00" Selected="True" Enabled="false" />
		<asp:ListItem Text="Tax Certificate Estimate - $38.50" Value="$38.5" Selected="True" Enabled="false" />
		<asp:ListItem Text="Estimated Recording Fee (Deed of Trust) - $108" Value="$108.00" Selected="True" Enabled="false" />
		<asp:ListItem Text="Estimated Recording Fee (Release of Lien) - $20" Value="$20.00" Selected="True" Enabled="false" />
		<asp:ListItem Text="Overnight/Courier - $50" Value="$50" Selected="True" Enabled="false" />
		<asp:ListItem Text="GARC Fee - $2.00" Value="$2.00" Selected="True" Enabled="false" />
		<asp:ListItem Text="eFile - $3.20" Value="$3.20" Selected="True" Enabled="false" />
	</asp:CheckBoxList>
</asp:Panel>
