<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="services.aspx.cs" Inherits="services" %>

<%@ Register Src="~/Controls/QuickLinks.ascx" TagPrefix="uc1" TagName="QuickLinks" %>


<asp:Content ID="Content1" ContentPlaceHolderID="contentPlaceHolders" Runat="Server">
  <div class="page clearfix">
	
		<div class="whiteBg">
			<div class="wrap fullContent clearfix">
				<h3>Services</h3>
				
				<p>
					<b>
						Paperless Closer&#8482;
					</b>
				</p>
				
				<p>
					Everyone in the mortgage industry will benefit from the state of the art software employed by Superior Abstract & Title. We understand the frustration that comes from dealing with 9-5 companies. We have incorporated software that allows you to "Know What We Know" all the time any time.
					<br><br>
					Our advanced closing software known as "Paperless Closer" allows you to manage your title transactions from anywhere that you can get on the internet. Once you have created an account with us you will be given a username and password that is the key to management of your account 24 hours a day, seven days a week.
				</p>
				
				<p>
					<b>
						Paperless Closer Features
					</b>
				</p>

				<ul>
					<li>
						<p>
							Email Notifications when you account has been updated
						</p>
					</li>
					<li>
						<p>
							Document Viewing and Printing
						</p>
					</li>
					<li>
						<p>
							Add notations to your accounts
						</p>
					</li>
					<li>
						<p>
							Upload Documents such as Payoff Statements, Survey Copies, Homeowners Insurance Information or even HOA information
						</p>
					</li>
					<li>
						<p>
							Lenders will have the flexibility of submitting refinance orders without having to contact your office
						</p>
					</li>
					<li>
						<p>
							Realtors will have access around the clock to check the status of their orders
						</p>
					</li>
				</ul>
			</div>
			
            <uc1:QuickLinks runat="server" ID="QuickLinks" />
		</div>
  </div>
</asp:Content>

