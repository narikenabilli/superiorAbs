<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="privacy-policy.aspx.cs" Inherits="privacy_policy" %>

<%@ Register Src="~/Controls/QuickLinks.ascx" TagPrefix="uc1" TagName="QuickLinks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentPlaceHolders" Runat="Server">
  <div class="page clearfix">
	
		<div class="whiteBg">
			<div class="wrap fullContent clearfix">
				<h3>Privacy Policy</h3>
				
				<p>
					Superior Abstract & Title recognizes the importance you place on your privacy and the confidentiality of your personal and business information.
					<br><br>
					We think it is important for you to be informed of the policies we have in place to safeguard your privacy. Superior Abstract & Title collects nonpublic personal information about you from the following sources:
				</p>

				<ul>
					<li>
						<p>
							Information we receive from you on applications or other forms
						</p>
					</li>
					<li>
						<p>
							Information sent to us via email
						</p>
					</li>
					<li>
						<p>
							Information gathered at the server level such as IP Addresses and Cookies
						</p>
					</li>
				</ul>
				
				<p>
					We do not disclose any nonpublic personal information about you to anyone, except as required by law.
					<br><br>
					Superior Abstract & Title restricts access to your personal and business information to those employees who need to know that information to provide products and services to you. Superior Abstract & Title maintains physical, electronic, and procedural safeguards that comply with federal standards to guard your nonpublic personal information.
					<br><br>
					We do not disclose information about former customers, except as required by law.
					<br><br>
					If you have any questions concerning our privacy policies, please feel free to call us at 214-705-1310.
				</p>
				
			</div>
			
      <uc1:QuickLinks runat="server" ID="QuickLinks" />
			
		</div>
  </div>
</asp:Content>