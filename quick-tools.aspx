<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="quick-tools.aspx.cs" Inherits="quick_tools" %>

<%@ Register Src="~/Controls/QuickLinks.ascx" TagPrefix="uc1" TagName="QuickLinks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentPlaceHolders" Runat="Server">

<div class="page clearfix">
	
		<div class="whiteBg">
			<div class="wrap fullContent clearfix">
				<h3>Quick Tools</h3>
				
				<ul class="counties">
					<li>
						<p>
							<a href="https://pcloser.superiorabstract.com/PaperlessCloserCCE/" target="_blank">View Your Account</a>
						</p>
					</li>
					<li>
						<p>
							<a href="rates.aspx">Texas Title Insurance Rate Card</a>
						</p>
					</li>
					<li>
						<p>
							<a href="title-insurance.aspx">What is Title Insurance?</a>
						</p>
					</li>
					<li>
						<p>
							<a href="http://www.trec.state.tx.us/formslawscontracts/" target="_blank">TREC Forms</a>
						</p>
					</li>
					<li>
						<p>
							<a href="glossary.aspx">Glossary</a>
						</p>
					</li>
					<li>
						<p>
							<a href="underwriters.aspx">Underwriters</a>
						</p>
					</li>
				</ul>
			</div>
			
			<uc1:QuickLinks runat="server" ID="QuickLinks" />

		</div>
  </div>

</asp:Content>

