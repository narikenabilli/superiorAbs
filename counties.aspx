<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="counties.aspx.cs" Inherits="counties" %>

<%@ Register Src="~/Controls/QuickLinks.ascx" TagPrefix="uc1" TagName="QuickLinks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="contentPlaceHolders" Runat="Server">

<div class="page clearfix">
	
		<div class="whiteBg">
			<div class="wrap fullContent clearfix">
				<h3>Counties</h3>
				
				<p class="title24">
					24 to 48 hour turn times in the following Counties:
				</p>
				
				<div class="col three">
					<ul class="counties">
						<li>
							<p>
								Bell
							</p>
						</li>
						<li>
							<p>
								Bexar
							</p>
						</li>
						<li>
							<p>
								Brazoria				
							</p>
						</li>
												<li>
							<p>
								Burnett				
							</p>
						</li>
						<li>
							<p>
								Collin
							</p>
						</li>
						<li>
							<p>
								Comal
							</p>
						</li>
						<li>
							<p>
								Dallas
							</p>
						</li>
						<li>
							<p>
								Denton
							</p>
						</li>
						<li>
							<p>
								El Paso
							</p>
						</li>
						<li>
							<p>
								Ellis
							</p>
						</li>
						<li>
							<p>
								Fort Bend
							</p>
						</li>
						<li>
							<p>
								Galveston
							</p>
						</li>
					</ul>
				</div>
				
				<div class="col three">
					<ul class="counties">
						<li>
							<p>
								Grayson
							</p>
						</li>
												<li>
							<p>
								Guadalupe
							</p>
						</li>
						<li>
							<p>
								Harris
							</p>
						</li>
						<li>
							<p>
								Hays
							</p>
						</li>
						<li>
							<p>
								Henderson
							</p>
						</li>
						<li>
							<p>
								Hunt
							</p>
						</li>
						<li>
							<p>
								Jefferson
							</p>
						</li>
						<li>
							<p>
								Johnson
							</p>
						</li>
						<li>
							<p>
								Kaufman
							</p>
						</li>
						<li>
							<p>
								Lubbock
							</p>
						</li>
						<li>
							<p>
								Matagorda
							</p>
						</li>
						<li>
							<p>
								Montgomery
							</p>
						</li>
					</ul>
				</div>
				
				<div class="col three">
					<ul class="counties">
						<li>
							<p>
								Nueces
							</p>
						</li>
						<li>
							<p>
								Parker
							</p>
						</li>
						<li>
							<p>
								Potter
							</p>
						</li>
						<li>
							<p>
								Randall
							</p>
						</li>
						<li>
							<p>
								Rockwall
							</p>
						</li>
						<li>
							<p>
								Smith
							</p>
						</li>
						<li>
							<p>
								Tarrant
							</p>
						</li>
						<li>
							<p>
								Travis
							</p>
						</li>
						<li>
							<p>
								Victoria
							</p>
						</li>
						<li>
							<p>
								Williamson
							</p>
						</li>
						<li>
							<p>
								Wise
							</p>
						</li>
					</ul>
				</div>
			</div>
			
			<uc1:QuickLinks runat="server" ID="QuickLinks" />

		</div>
  </div>

</asp:Content>

