<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="place-order.aspx.cs" Inherits="place_order" %>

<%@ Register Src="~/Controls/QuickLinks.ascx" TagPrefix="uc1" TagName="QuickLinks" %>


<asp:Content ID="Content1" ContentPlaceHolderID="contentPlaceHolders" Runat="Server">
  <div class="page clearfix">
		<div class="whiteBg">
			<div class="wrap fullContent clearfix">
				<h3>Place an Order</h3>
				
				<div class="formWrapper">
					<div class="formRow">
						<h5>Your Contact Information</h5>
						
						<div class="col three">
							<ul>
								<li>
									<span class="label boldLabel">
										Company Name *
									</span>
									
									<span class="field">
                                        <asp:TextBox runat="server" ID="tbCompanyName"></asp:TextBox>
                                        <asp:RequiredFieldValidator CssClass="valError" Display="Dynamic" runat="server" ControlToValidate="tbCompanyName" ErrorMessage="Please enter a value for the Company Name." />
									</span>
								</li>

								<li>
									<span class="label boldLabel">
										Email Address *
									</span>
									
									<span class="field">
										<asp:TextBox runat="server" ID="tbEmail"></asp:TextBox>
                                        <asp:RequiredFieldValidator CssClass="valError" Display="Dynamic" runat="server" ControlToValidate="tbEmail" ErrorMessage="Please enter a valid email address for the Contact Email." />
                                        <asp:RegularExpressionValidator CssClass="valError" Display="Dynamic" runat="server" ValidationExpression=".+@.+" ControlToValidate="tbEmail" ErrorMessage="Please enter a valid email address for the Contact Email." />
									</span>
								</li>
							<!--	<li>
									<span class="label">
										Zip
									</span>
									
									<span class="field">
										<asp:TextBox runat="server" ID="tbZip"></asp:TextBox>
									</span>
								</li> -->
							</ul>
						</div>
						
						<div class="col three">
							<ul>
								<li>
									<span class="label boldLabel">
										Your Full Name *
									</span>
									
									<span class="field">
                                        <asp:TextBox runat="server" ID="tbFullName"></asp:TextBox>
                                        <asp:RequiredFieldValidator CssClass="valError" Display="Dynamic" runat="server" ControlToValidate="tbFullName" ErrorMessage="Please enter your Contact Name." />
									</span>
								</li>

						<!--		<li>
									<span class="label">
										Street Address
									</span>
									
									<span class="field">
										<asp:TextBox runat="server" ID="tbStreetAddress"></asp:TextBox>
									</span>
								</li>
								<li>
									<span class="label">
										City
									</span>
									
									<span class="field">
										<asp:TextBox runat="server" ID="tbCity"></asp:TextBox>
									</span>
								</li>
								<li>
									<span class="label">
										State
									</span>
									
									<span class="field">
                                        <asp:DropDownList runat="server" ID="ddlState"></asp:DropDownList>
									</span>
								</li> -->
							</ul>
						</div>
						
						<div class="col three">
							<ul>
								<li>
									<span class="label boldLabel">
										Phone Number *
									</span>
									
									<span class="field">
										<asp:TextBox runat="server" ID="tbPhoneNumber"></asp:TextBox>
                                        <asp:RequiredFieldValidator CssClass="valError" Display="Dynamic" runat="server" ControlToValidate="tbPhoneNumber" ErrorMessage="Please enter a value for the Phone Number." />
									</span>
								</li>
							<!--	<li>
									<span class="label">
										Loan Officer
									</span>
									
									<span class="field">
										<asp:TextBox runat="server" ID="tbLoanOfficer"></asp:TextBox>
									</span>
								</li>
								<li>
									<span class="label">
										Processor
									</span>
									
									<span class="field">
										<asp:TextBox runat="server" ID="tbProcessor"></asp:TextBox>
									</span>
								</li>
								<li>
									<span class="label">
										Fax Number
									</span>
									
									<span class="field">
										<asp:TextBox runat="server" ID="tbFaxNumber"></asp:TextBox>
									</span>
								</li>  -->
							</ul>
						</div>
					</div>
					
					<div class="formRow">
						<h5>Buyer/Borrower Information</h5>
						
						<div class="col three">
							<ul>
								<li>
									<span class="label boldLabel">
										Borrower *
									</span>
									
									<span class="field">
										<asp:TextBox runat="server" ID="tbBorrower"></asp:TextBox>
                                        <asp:RequiredFieldValidator CssClass="valError" Display="Dynamic" runat="server" ControlToValidate="tbBorrower" ErrorMessage="Please enter a value for the first Borrower's name." />
									</span>
								</li>
							<!--	<li>
									<span class="label">
										Borrower SSN
									</span>
									
									<span class="field">
										<asp:TextBox runat="server" ID="tbBorrowerSSN"></asp:TextBox>
									</span>
								</li>
								<li>
									<span class="label">
										Spouse
									</span>
									
									<span class="field">
										<asp:TextBox runat="server" ID="tbBorrowerSpouse"></asp:TextBox>
									</span>
								</li>
								<li>
									<span class="label">
										Spouse SSN
									</span>
									
									<span class="field">
										<asp:TextBox runat="server" ID="tbBorrowerSpouseSSN"></asp:TextBox>
									</span>
								</li> -->
							</ul>
						</div>
						
						<div class="col three">
							<ul>
							<!--	<li>
									<span class="label">
										Spouse Is:
									</span>
									
									<span class="field">
                                          <asp:RadioButtonList CssClass="radio" runat="server" ID="rblBorrower">
                                            <asp:ListItem Value="Co-Borrower">Co-Borrower</asp:ListItem>
                                            <asp:ListItem Value="Non-Borrower">Non-Borrower</asp:ListItem>
                                        </asp:RadioButtonList>
									</span>
								</li> -->
							<!--	<li>
									<span class="label">
										Home Number
									</span>
									
									<span class="field">
										<asp:TextBox runat="server" ID="tbBorrowerHomeNumber"></asp:TextBox>
									</span>
								</li> -->
								<li>
									<span class="label">
										Work Number
									</span>
									
									<span class="field">
										<asp:TextBox runat="server" ID="tbBorrowerWorkNumber"></asp:TextBox>
									</span>
								</li>
							</ul>
						</div>
						
						<div class="col three">
							<ul>
								<li>
									<span class="label">
										Cell Number
									</span>
									
									<span class="field">
										<asp:TextBox runat="server" ID="tbBorrowerCellNumber"></asp:TextBox>
									</span>
								</li>
							<!--	<li>
									<span class="label">
										Street Address
									</span>
									
									<span class="field">
										<asp:TextBox runat="server" ID="tbBorrowerStreetAddress"></asp:TextBox>
									</span>
								</li>
								<li>
									<span class="label">
										City
									</span>
									
									<span class="field">
										<asp:TextBox runat="server" ID="tbBorrowerCity"></asp:TextBox>
									</span>
								</li>
								<li>
									<span class="label">
										State
									</span>
									
									<span class="field">
                                        <asp:DropDownList runat="server" ID="ddlBorrowerState"></asp:DropDownList>
									</span>
								</li>
								<li>
									<span class="label">
										Zip
									</span>
									
									<span class="field">
										<asp:TextBox runat="server" ID="tbBorrowerZip"></asp:TextBox>
									</span>
								</li>  -->
							</ul>
						</div>
					</div>
					
				<!--	<div class="formRow">
						<h5>Buyer/Borrower 2 Information (Optional)</h5>
						
						<div class="col three">
							<ul>
								<li>
									<span class="label">
										Borrower 2
									</span>
									
									<span class="field">
										<asp:TextBox runat="server" ID="tbBorrower2"></asp:TextBox>
									</span>
								</li>
								<li>
									<span class="label">
										Borrower SSN
									</span>
									
									<span class="field">
										<asp:TextBox runat="server" ID="tbBorrower2Ssn"></asp:TextBox>
									</span>
								</li>
								<li>
									<span class="label">
										Spouse
									</span>
									
									<span class="field">
										<asp:TextBox runat="server" ID="tbBorrower2Spouse"></asp:TextBox>
									</span>
								</li>
								<li>
									<span class="label">
										Spouse SSN
									</span>
									
									<span class="field">
										<asp:TextBox runat="server" ID="tbBorrower2SpouseSsn"></asp:TextBox>
									</span>
								</li>
							</ul>
						</div>
						
						<div class="col three">
							<ul>
								<li>
									<span class="label">
										Spouse Is:
									</span>
									
									<span class="field">
                                          <asp:RadioButtonList CssClass="radio" runat="server" ID="rblBorrower2">
                                            <asp:ListItem Value="Co-Borrower">Co-Borrower</asp:ListItem>
                                            <asp:ListItem Value="Non-Borrower">Non-Borrower</asp:ListItem>
                                        </asp:RadioButtonList>
									</span>
								</li>
								<li>
									<span class="label">
										Home Number
									</span>
									
									<span class="field">
										<asp:TextBox runat="server" ID="tbBorrower2HomeNumber"></asp:TextBox>
									</span>
								</li>
								<li>
									<span class="label">
										Work Number
									</span>
									
									<span class="field">
										<asp:TextBox runat="server" ID="tbBorrower2WorkNunmber"></asp:TextBox>
									</span>
								</li>
								<li>
									<span class="label">
										Cell Number
									</span>
									
									<span class="field">
										<asp:TextBox runat="server" ID="tbBorrower2CellNumber"></asp:TextBox>
									</span>
								</li>
							</ul>
						</div>
						
						<div class="col three">
							<ul>
								<li>
									<span class="label">
										Street Address
									</span>
									
									<span class="field">
										<asp:TextBox runat="server" ID="tbBorrower2StreetAddress"></asp:TextBox>
									</span>
								</li>
								<li>
									<span class="label">
										City
									</span>
									
									<span class="field">
										<asp:TextBox runat="server" ID="tbBorrower2City"></asp:TextBox>
									</span>
								</li>
								<li>
									<span class="label">
										State
									</span>
									
									<span class="field">
                                        <asp:DropDownList runat="server" ID="ddlBorrower2State"></asp:DropDownList>
									</span>
								</li>
								<li>
									<span class="label">
										Zip
									</span>
									
									<span class="field">
										<asp:TextBox runat="server" ID="tbBorrower2Zip"></asp:TextBox>
									</span>
								</li>
							</ul>
						</div>
					</div>  -->
					
					<div class="formRow">
						<p class="formNote">If there are additional borrowers, please list them in the additional notes section.</p>
						<h5>Seller Information (For Purchases Only)</h5>
						
						<div class="col three">
							<ul>
								<li>
									<span class="label">
										Seller
									</span>
									
									<span class="field">
										<asp:TextBox runat="server" ID="tbSeller"></asp:TextBox>
									</span>
								</li>
						<!--		<li>
									<span class="label">
										Seller SSN
									</span>
									
									<span class="field">
										<asp:TextBox runat="server" ID="tbSellerSsn"></asp:TextBox>
									</span>
								</li>
								<li>
									<span class="label">
										Spouse
									</span>
									
									<span class="field">
										<asp:TextBox runat="server" ID="tbSellerSpouse"></asp:TextBox>
									</span>
								</li>
								<li>
									<span class="label">
										Spouse SSN
									</span>
									
									<span class="field">
										<asp:TextBox runat="server" ID="tbSellerSpouseSsn"></asp:TextBox>
									</span>
								</li>  -->
							</ul>
						</div>
						
						<div class="col three">
							<ul>
							<!--	<li>
									<span class="label">
										Zip
									</span>
									
									<span class="field">
										<asp:TextBox runat="server" ID="tbSellerZip"></asp:TextBox>
									</span>
								</li>  -->
								<li>
									<span class="label">
										Cell Number
									</span>
									
									<span class="field">
										<asp:TextBox runat="server" ID="tbSellerCellNumber"></asp:TextBox>
									</span>
								</li>

							<!--	<li>
									<span class="label">
										Home Number
									</span>
									
									<span class="field">
										<asp:TextBox runat="server" ID="tbSellerHomeNumber"></asp:TextBox>
									</span>
								</li> -->
							</ul>
						</div>
						
						<div class="col three">
							<ul>

								<li>
									<span class="label">
										Work Number
									</span>
									
									<span class="field">
										<asp:TextBox runat="server" ID="tbSellerWorkNumber"></asp:TextBox>
									</span>
								</li>
								<!-- <li>
									<span class="label">
										Street Address
									</span>
									
									<span class="field">
										<asp:TextBox runat="server" ID="tbSellerStreetAddress"></asp:TextBox>
									</span>
								</li>
								<li>
									<span class="label">
										City
									</span>
									
									<span class="field">
										<asp:TextBox runat="server" ID="tbSellerCity"></asp:TextBox>
									</span>
								</li>
								<li>
									<span class="label">
										State
									</span>
									
									<span class="field">
                                        <asp:DropDownList runat="server" ID="ddlSellerState"></asp:DropDownList>
									</span>
								</li> -->
							</ul>
						</div>
					</div>
					
					<div class="formRow">
						<h5>Property Information</h5>
						
						<div class="col three">
							<ul>
								<li>
									<span class="label boldLabel">
										Street Address *
									</span>
									
									<span class="field">
										<asp:TextBox runat="server" ID="tbPropStreetAddress"></asp:TextBox>
                                        <asp:RequiredFieldValidator CssClass="valError" Display="Dynamic" runat="server" ControlToValidate="tbPropStreetAddress" ErrorMessage="Please enter a value for the Property Address." />
									</span>
								</li>
								<li>
									<span class="label boldLabel">
										City *
									</span>
									
									<span class="field">
										<asp:TextBox runat="server" ID="tbPropCity"></asp:TextBox>
                                        <asp:RequiredFieldValidator CssClass="valError" Display="Dynamic" runat="server" ControlToValidate="tbPropCity" ErrorMessage="Please enter a value for the Property City." />
									</span>
								</li>
								<li>
									<span class="label boldLabel">
										State *
									</span>
									
									<span class="field">
									 <asp:DropDownList runat="server" ID="ddlPropState" Enabled="false" ></asp:DropDownList>
                                        <asp:RequiredFieldValidator InitialValue="Select State" CssClass="valError" Display="Dynamic" runat="server" ControlToValidate="ddlPropState" ErrorMessage="Please select one of the Property States." />
									</span>
								</li>
							</ul>
						</div>
						
						<div class="col three">
							<ul>
								<li>
									<span class="label boldLabel">
										Zip Code *
									</span>
									
									<span class="field">
										<asp:TextBox runat="server" ID="tbPropZip"></asp:TextBox>
                                        <asp:RequiredFieldValidator CssClass="valError" Display="Dynamic" runat="server" ControlToValidate="tbPropZip" ErrorMessage="Please enter a value for the Property Zip." />
									</span>
								</li>
								<li>
									<span class="label boldLabel">
										County *
									</span>
									
									<span class="field">
										<asp:TextBox runat="server" ID="tbPropCounty"></asp:TextBox>
                                        <asp:RequiredFieldValidator CssClass="valError" Display="Dynamic" runat="server" ControlToValidate="tbPropCounty" ErrorMessage="Please enter a value for the Property County." />
									</span>
								</li>
							</ul>
						</div>
						
						<div class="col three">
							<ul>
								<!-- <li>
									<span class="label">
										Legal Description
									</span>
									
									<span class="field">
                                        <asp:TextBox runat="server" CssClass="textarea" ID="tbPropLegalDescription" TextMode="MultiLine"></asp:TextBox>
									</span>
								</li> -->
							</ul>
						</div>
					</div>
					
					<div class="formRow">
						<h5>Loan Information</h5>
						
						<div class="col three">
							<ul>
								<!-- <li>
									<span class="label">
										Loan Number
									</span>
									
									<span class="field">
										<asp:TextBox runat="server" ID="tbLoanNumber"></asp:TextBox>
									</span>
								</li> -->
								<li>
									<span class="label boldLabel">
										Loan Amount *
									</span>
									
									<span class="field">
										<asp:TextBox runat="server" ID="tbLoanAmount"></asp:TextBox>
                                        <asp:RequiredFieldValidator CssClass="valError" Display="Dynamic" runat="server" ControlToValidate="tbLoanAmount" ErrorMessage="Please enter a value for the Loan Amount." />
									</span>
								</li>
							</ul>
						</div>
						
						<div class="col three">
							<ul>
								<li>
									<span class="label boldLabel">
										Type of Loan *
									</span>
									
									<span class="field">
                                        <asp:RadioButtonList runat="server" ID="rblLoanType" CssClass="radio">
                                            <asp:ListItem Value="Purchase">Purchase</asp:ListItem> 
                                            <asp:ListItem Value="Primary Residence">Primary Residence</asp:ListItem> 
                                            <asp:ListItem Value="Home Equity">Home Equity</asp:ListItem> 
                                            <asp:ListItem Value="Investment Property">Investment Property</asp:ListItem> 
                                            <asp:ListItem Value="Rate & Term">Rate & Term</asp:ListItem> 
                                        </asp:RadioButtonList>
                                        <asp:RequiredFieldValidator CssClass="valError" Display="Dynamic" runat="server" ControlToValidate="rblLoanType" ErrorMessage="Please select Loan Type." />
									</span>
								</li>
							</ul>
						</div>
					</div>
					
					<div class="formRow">
						<h5>General Information</h5>
						
						<div class="col three">
							<ul>
								<li>
									<span class="label">
										Estimated Closing Date (mm//dd/yy)
									</span>
									
									<span class="field">
										<asp:TextBox runat="server" ID="tbClosingDate"></asp:TextBox>
									</span>
								</li>
								<li>
									<span class="label">
										Sales Price
									</span>
									
									<span class="field">
										<asp:TextBox runat="server" ID="tbSalesPrice"></asp:TextBox>
									</span>
								</li>
							</ul>
						</div>
						
						<div class="col three">
							<ul>
								<li>
									<span class="label boldLabel">
										Do you have a previous survey? *
									</span>
									
									<span class="field">
                                        <asp:RadioButtonList CssClass="radio" runat="server" ID="rblPreviousSurvey">
                                            <asp:ListItem Value="Yes">Yes</asp:ListItem>
                                            <asp:ListItem Value="No">No</asp:ListItem>
                                        </asp:RadioButtonList>
                                        <asp:RequiredFieldValidator CssClass="valError" Display="Dynamic" runat="server" ControlToValidate="rblPreviousSurvey" ErrorMessage="Please select one of the options regarding whether or not you've have a previous survey." />
									</span>
								</li>
								<li>
									<span class="label boldLabel">
										Do you have a previous title policy? *
									</span>
									
									<span class="field">
                                          <asp:RadioButtonList CssClass="radio" runat="server" ID="rblPreviousPolicy">
                                            <asp:ListItem Value="Yes">Yes</asp:ListItem>
                                            <asp:ListItem Value="No">No</asp:ListItem>
                                        </asp:RadioButtonList>
                                        <asp:RequiredFieldValidator CssClass="valError" Display="Dynamic" runat="server" ControlToValidate="rblPreviousPolicy" ErrorMessage="Please select one of the options regarding whether or not you've have a previous title policy." />
									</span>
								</li>
							</ul>
						</div>
						
						<div class="col three">
							<ul>
								<li>
									<span class="label">
										Additional Notes
									</span>
									
									<span class="field">
                                        <asp:TextBox runat="server" TextMode="MultiLine" CssClass="textarea" ID="tbAdditionalNotes"></asp:TextBox>
									</span>
								</li>
							</ul>
						</div>
					</div>
					
					<div class="formRow">
						<div class="col three">
							<ul>
								<li>
									<input type="reset" class="formBtn" value="Reset" />
                                    <asp:LinkButton runat="server" CssClass="formBtn" OnClick="OnSubmitClick">Submit</asp:LinkButton>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
            <uc1:QuickLinks runat="server" ID="QuickLinks" />
		</div>
  </div>
<asp:ValidationSummary runat="server" ShowMessageBox="true" />
</asp:Content>

