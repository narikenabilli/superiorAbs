<%@ LANGUAGE="VBScript" %>
<% Option Explicit %>
<%

    Dim conn, sql, x
    
    set conn = Server.CreateObject("ADODB.Connection") 
    'conn.Open "dsn=SuperiorAbstract;uid=prometheus;pwd=zion2003;database=SuperiorAbstract"
	conn.Open "Driver={MySQL ODBC 3.51 Driver};Server=localhost;Database=SuperiorAbstract;User=SuperiorAbstract;Password=5up3r10rAb5tract;Option=3;"

    Dim rsTitleOrder_NotViewed
    set rsTitleOrder_NotViewed = Server.CreateObject("ADODB.recordset")
    
    sql = "SELECT TitleOrder.ID, FullName, DATE_FORMAT(TitleOrder.Date, '%m/%d/%Y') " & _
            "FROM TitleOrder " & _
            "LEFT JOIN ContactInfo ON ContactInfo.ID = TitleOrder.ContactInfoID " & _
            "WHERE TitleOrder.Viewed = 'No' AND TitleOrder.Archived = 'No' " & _
            "ORDER BY TitleOrder.Date"
    
    rsTitleOrder_NotViewed.Open sql, conn        
    
    Dim rsTitleOrder_Viewed
    set rsTitleOrder_Viewed = Server.CreateObject("ADODB.recordset")
    
    sql = "SELECT TitleOrder.ID, FullName, DATE_FORMAT(TitleOrder.Date, '%m/%d/%Y') " & _
            "FROM TitleOrder " & _
            "LEFT JOIN ContactInfo ON ContactInfo.ID = TitleOrder.ContactInfoID " & _
            "WHERE TitleOrder.Viewed = 'Yes' AND TitleOrder.Archived = 'No' " & _
            "ORDER BY TitleOrder.Date"
    
    rsTitleOrder_Viewed.Open sql, conn        
%>

<html>

<head>
<title>Title Companies in Dallas and Ft. Worth - Superior Abstract &amp; Title - Admin</title>
<link rel="stylesheet" type="text/css" href="style.css"></link>
</head>

<body>

<div align="left">
	<table border="0" width="770" id="table1" cellpadding="0" style="border-collapse: collapse" bgcolor="#FFFFFF">
		<tr>
			<td width="100%"><!--#include file="top.htm"--></td>
		</tr>
	</table>
</div>

<table cellspacing="4" cellpadding="4">
    <tr>
        <td valign="top">
            Not Viewed<br />
            <% do until rsTitleOrder_NotViewed.EOF %>
            <a href="view-order.asp?id=<%= rsTitleOrder_NotViewed(0) %>"><%= rsTitleOrder_NotViewed(2) %>&nbsp;<%= rsTitleOrder_NotViewed(1) %></a><br />
            <% rsTitleOrder_NotViewed.MoveNext %>
            <% loop %>        
        </td>
        <td>&nbsp;</td>
        <td valign="top">
            Viewed<br />
            <% do until rsTitleOrder_Viewed.EOF %>
            <a href="view-order.asp?id=<%= rsTitleOrder_Viewed(0) %>"><%= rsTitleOrder_Viewed(2) %>&nbsp;<%= rsTitleOrder_Viewed(1) %></a><br />
            <% rsTitleOrder_Viewed.MoveNext %>
            <% loop %>        
        </td>    
    </tr>
</table>

</body>

</html>

