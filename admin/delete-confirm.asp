<%@ LANGUAGE="VBScript" %>
<% Option Explicit %>
<%

    Dim conn, sql, message
    
    set conn = Server.CreateObject("ADODB.Connection") 
    'conn.Open "dsn=SuperiorAbstract;uid=prometheus;pwd=zion2003;database=SuperiorAbstract"
	conn.Open "Driver={MySQL ODBC 3.51 Driver};Server=localhost;Database=SuperiorAbstract;User=SuperiorAbstract;Password=5up3r10rAb5tract;Option=3;"

    if Request.QueryString("id") <> "" Then
        
        Dim rsTitleOrder
        set rsTitleOrder = Server.CreateObject("ADODB.recordset")

        sql = "SELECT ID, ContactInfoID, BuyerBorrowerInfoID, BuyerBorrowerInfo2ID, SellerInfoID, PropertyInfoID, LoanInfoID, GeneralInfoID, Viewed, Archived, DATE_FORMAT(Date, '%m.%d.%Y') FROM TitleOrder WHERE ID = " & Request.QueryString("id")
        
        rsTitleOrder.Open sql, conn
        
        if Not IsEmpty(rsTitleOrder) Then
            
            sql = "DELETE FROM ContactInfo WHERE ID = " & rsTitleOrder(1)
            conn.Execute sql            
            
            sql = "DELETE FROM BuyerBorrowerInfo WHERE ID = " & rsTitleOrder(2)
            conn.Execute sql
            
            sql = "DELETE FROM BuyerBorrowerInfo WHERE ID = " & rsTitleOrder(3)
            conn.Execute sql
            
            sql = "DELETE FROM SellerInfo WHERE ID = " & rsTitleOrder(4)
            conn.Execute sql
            
            sql = "DELETE FROM PropertyInfo WHERE ID = " & rsTitleOrder(5)
            conn.Execute sql
            
            sql = "DELETE FROM LoanInfo WHERE ID = " & rsTitleOrder(6)
            conn.Execute sql
            
            sql = "DELETE FROM GeneralInfo WHERE ID = " & rsTitleOrder(7)
            conn.Execute sql
        end if
        
    end if

    if Request.QueryString("id") <> "" Then
       
        sql = "DELETE FROM TitleOrder WHERE ID = " & Request.QueryString("id")
        conn.Execute sql
        message = "The order has been permanently deleted from the database."       
        
    else
        
        message = "No orders have been deleted."
            
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

