<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>
<%@ Register Src="~/Controls/QuickLinks.ascx" TagPrefix="uc1" TagName="QuickLinks" %>


<asp:Content ID="Content1" ContentPlaceHolderID="contentPlaceHolders" Runat="Server">
  <div class="page clearfix">
	
		<div class="whiteBg">
			<div class="wrap fullContent clearfix">
				<h3>Contact Us</h3>
				
				<div class="formWrapper">
					<img src="images/denise.png" alt="" class="contactImg">
					
					<div class="formRow">
						<div class="col three">
							<p>
								<b>Mailing Address</b>
								<br>
								Superior Abstract and Title, LLC
								<br>
								8240 Preston Road, Suite 250
								<br>
								Plano, TX 75024
								<br>
								<a href="https://maps.google.com/maps?q=Superior+Abstract+and+Title,+LLC+8240+Preston+Road,+Suite+250+Plano,+TX+75024+&hl=en&ll=33.089312,-96.804786&spn=0.007362,0.016512&sll=32.862876,-96.961433&sspn=0.472366,1.056747&t=h&hq=Superior+Abstract+and+Title,+LLC&hnear=8240+Preston+Rd+%23250,+Plano,+Texas+75024&z=17&layer=c&cbll=33.089718,-96.805462&panoid=7s2nTY-BiwuUom2FlzQuhQ&cbp=12,104.81,,0,0.23">Map & Driving Directions</a>
							</p>
							
							<p>
								<b>Phone Numbers</b>
								<br>
								214.705.1310...Office
								<br>
								214.705.1323...Fax
							</p>
							
							<p>
								<b>Email Us</b>
								<br>
								<a href="mailto:info@superiorabstract.com">info@superiorabstract.com</a>
							</p>
						</div>

                        <asp:Panel runat="server" ID="fields">
						<div class="col three">
							<ul>
								<li>
									<span class="label">
										Name *
									</span>
									
									<span class="field">
                                        <asp:TextBox runat="server" ID="tbName"></asp:TextBox>
                                        <asp:RequiredFieldValidator CssClass="valError" Display="Dynamic" runat="server" ControlToValidate="tbName" ErrorMessage="Please enter a value for the Name." />
									</span>
								</li>
								<li>
									<span class="label">
										Company
									</span>
									
									<span class="field">
                                        <asp:TextBox runat="server" ID="tbCompany"></asp:TextBox>
									</span>
								</li>
								<li>
									<span class="label">
										Contact Number *
									</span>
									
									<span class="field">
                                        <asp:TextBox runat="server" ID="tbContactNumber"></asp:TextBox>
                                        <asp:RequiredFieldValidator CssClass="valError" Display="Dynamic" runat="server" ControlToValidate="tbContactNumber" ErrorMessage="Please enter a value for the Contact Number." />
									</span>
								</li>
								<li>
									<span class="label">
										Email Address *
									</span>
									
									<span class="field">
                                        <asp:TextBox runat="server" ID="tbEmail"></asp:TextBox>
                                        <asp:RequiredFieldValidator CssClass="valError" Display="Dynamic" runat="server" ControlToValidate="tbEmail" ErrorMessage="Please enter a valid email address for the Contact Email." />
                                        <asp:RegularExpressionValidator CssClass="valError" Display="Dynamic" runat="server" ValidationExpression=".+@.+" ControlToValidate="tbEmail" ErrorMessage="Please enter a valid email address for the Contact Email." />
									</span>
								</li>
								<li>
									<span class="label">
										Comments
									</span>
									
									<span class="field">
                                        <asp:TextBox runat="server" ID="tbComments" TextMode="MultiLine"></asp:TextBox>
									</span>
								</li>
								<li>
									<input type="reset" class="formBtn" value="Reset" />
                                    <asp:LinkButton runat="server" CssClass="formBtn" ID="lnkSubmit" Text="Submit" OnClick="OnSubmitClicked"/>
								</li>
							</ul>
						</div>
                        </asp:Panel>
                        <asp:Panel runat="server" Visible="false" ID="thankyou">
                            <h4>Thank you for your submission</h4>
                        </asp:Panel>
					</div>
				</div>
			</div>
            <uc1:QuickLinks runat="server" ID="QuickLinks" />
		</div>
  </div>
</asp:Content>

