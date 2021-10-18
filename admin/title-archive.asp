<%@ LANGUAGE="VBScript" %>
<% Option Explicit %>
<%

    Dim conn, sql, x
    
    set conn = Server.CreateObject("ADODB.Connection") 
    'conn.Open "dsn=SuperiorAbstract;uid=prometheus;pwd=zion2003;database=SuperiorAbstract"
	conn.Open "Driver={MySQL ODBC 3.51 Driver};Server=localhost;Database=SuperiorAbstract;User=SuperiorAbstract;Password=5up3r10rAb5tract;Option=3;"

    Dim rsTitleOrder
    set rsTitleOrder = Server.CreateObject("ADODB.recordset")
    
    sql = "SELECT TitleOrder.ID, FullName, DATE_FORMAT(TitleOrder.Date, '%m/%d/%Y') " & _
            "FROM TitleOrder " & _
            "LEFT JOIN ContactInfo ON ContactInfo.ID = TitleOrder.ContactInfoID " & _
            "WHERE TitleOrder.Archived = 'Yes' " & _
            "ORDER BY TitleOrder.Date"
    
    rsTitleOrder.Open sql, conn        
    
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
            Title Archive<br />
            <% do until rsTitleOrder.EOF %>
            <a href="view-order.asp?id=<%= rsTitleOrder(0) %>"><%= rsTitleOrder(2) %>&nbsp;<%= rsTitleOrder(1) %></a><br />
            <% rsTitleOrder.MoveNext %>
            <% loop %>        
        </td>
    </tr>
</table>

</body>

</html>

