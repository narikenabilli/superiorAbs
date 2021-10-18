<%@ LANGUAGE="VBScript" %>
<% Option Explicit %>
<%

    Dim conn, sql, message
    
    set conn = Server.CreateObject("ADODB.Connection") 
    'conn.Open "dsn=SuperiorAbstract;uid=prometheus;pwd=zion2003;database=SuperiorAbstract"
	conn.Open "Driver={MySQL ODBC 3.51 Driver};Server=localhost;Database=SuperiorAbstract;User=SuperiorAbstract;Password=5up3r10rAb5tract;Option=3;"

    if Request.QueryString("id") <> "" Then
       
        message = "The order has been moved to the archives."       
        sql = "UPDATE TitleOrder SET Archived = 'Yes' WHERE ID = " & Request.QueryString("id")
        conn.Execute sql
        
    else
        
        message = "No orders have been archived."
            
    end if
    
%>

<html>

<head>
<title>Title Companies in Dallas and Ft. Worth - Superior Abstract &amp; Title - Admin</title>
</head>
<link rel="stylesheet" type="text/css" href="style.css"></link>

<body>

<div align="left">
	<table border="0" width="770" id="table1" cellpadding="0" style="border-collapse: collapse" bgcolor="#FFFFFF">
		<tr>
			<td width="100%"><!--#include file="top.htm"--></td>
		</tr>
	</table>
</div>
<%= message %>

</body>

</html>

