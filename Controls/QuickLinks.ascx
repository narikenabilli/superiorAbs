<%@ Control Language="C#" AutoEventWireup="true" CodeFile="QuickLinks.ascx.cs" Inherits="Controls_QuickLinks" %>
<div class="wrap row featured interiorQuicklinks clearfix">
	<ul>
		<li>
			<h1>Quick Links</h1>
		</li>
		<li>
			<a href="rates.aspx" class="quickBtn">Title Insurance Calculator</a>
		</li>
		<li>
			<a href="<%=ResolveUrl("~/counties.aspx") %>" class="quickBtn">List of Licensed Counties</a>
		</li>
		<li>
			<a href="place-order.aspx" class="quickBtn">Place an order online</a>
		</li>
	</ul>
</div>