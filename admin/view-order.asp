<%@ LANGUAGE="VBScript" %>
<% Option Explicit %>
<%

    Dim conn, sql, x
    
    set conn = Server.CreateObject("ADODB.Connection") 
    'conn.Open "dsn=SuperiorAbstract;uid=prometheus;pwd=zion2003;database=SuperiorAbstract"
	conn.Open "Driver={MySQL ODBC 3.51 Driver};Server=localhost;Database=SuperiorAbstract;User=SuperiorAbstract;Password=5up3r10rAb5tract;Option=3;"


    if Request.QueryString("id") <> "" Then
        
        Dim rsTitleOrder
        set rsTitleOrder = Server.CreateObject("ADODB.recordset")
        
        Dim rsContactInfo
        set rsContactInfo = Server.CreateObject("ADODB.recordset")

        Dim rsBuyerBorrowerInfo
        set rsBuyerBorrowerInfo = Server.CreateObject("ADODB.recordset")

        Dim rsBuyerBorrowerInfo2
        set rsBuyerBorrowerInfo2 = Server.CreateObject("ADODB.recordset")

        Dim rsSellerInfo
        set rsSellerInfo = Server.CreateObject("ADODB.recordset")

        Dim rsPropertyInfo
        set rsPropertyInfo = Server.CreateObject("ADODB.recordset")

        Dim rsLoanInfo
        set rsLoanInfo = Server.CreateObject("ADODB.recordset")

        Dim rsGeneralInfo
        set rsGeneralInfo = Server.CreateObject("ADODB.recordset")

        sql = "SELECT ID, ContactInfoID, BuyerBorrowerInfoID, BuyerBorrowerInfo2ID, SellerInfoID, PropertyInfoID, LoanInfoID, GeneralInfoID, Viewed, Archived, DATE_FORMAT(Date, '%m.%d.%Y') FROM TitleOrder WHERE ID = " & Request.QueryString("id")
        
        rsTitleOrder.Open sql, conn
        
        if Not IsEmpty(rsTitleOrder) Then
            
            sql = "SELECT CompanyName, FullName, EmailAddress, LoanOfficer, Processor, StreetAddress, City, State, Zip, PhoneNumber, FaxNumber FROM ContactInfo WHERE ID = " & rsTitleOrder(1)
            rsContactInfo.Open sql, conn
            
            sql = "SELECT Borrower, BorrowerSSN, Spouse, SpouseSSN, SpouseIs, HomeNumber, WorkNumber, CellNumber, StreetAddress, City, State, Zip FROM BuyerBorrowerInfo WHERE ID = " & rsTitleOrder(2)
            rsBuyerBorrowerInfo.Open sql, conn

            sql = "SELECT Borrower, BorrowerSSN, Spouse, SpouseSSN, SpouseIs, HomeNumber, WorkNumber, CellNumber, StreetAddress, City, State, Zip FROM BuyerBorrowerInfo WHERE ID = " & rsTitleOrder(3)
            rsBuyerBorrowerInfo2.Open sql, conn

            sql = "SELECT Seller, SellerSSN, Spouse, SpouseSSN, HomeNumber, WorkNumber, CellNumber, StreetAddress, City, State, Zip FROM SellerInfo WHERE ID = " & rsTitleOrder(4)
            rsSellerInfo.Open sql, conn

            sql = "SELECT StreetAddress, City, State, Zip, County, LegalDescription FROM PropertyInfo WHERE ID = " & rsTitleOrder(5)
            rsPropertyInfo.Open sql, conn

            sql = "SELECT LoanAmount, LoanType, LoanNumber FROM LoanInfo WHERE ID = " & rsTitleOrder(6)
            rsLoanInfo.Open sql, conn

            sql = "SELECT EstimatedClosingDate, SalesPrice, HasPreviousSurvey, HasPreviousTitle, AdditionalNotes FROM GeneralInfo WHERE ID = " & rsTitleOrder(7)
            rsGeneralInfo.Open sql, conn

        end if
        
        if rsTitleOrder(8) = "No" Then
        
            sql = "UPDATE TitleOrder SET Viewed = 'Yes' WHERE ID = " & Request.QueryString("id")
            conn.Execute sql
            
        end if
        
    end if
    
    Function formatFieldName(strText)
	    If strText = "" OR IsNull(strText) Then
		    fixText = "N/A"
	    Else
		    fixText = strText
	    End If
    End Function    
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

<script type="text/javascript" language="javascript">

function confirmArchive(form, id)
{
    if (form.ActionCheckbox.checked)    
    {
        if (form.ActionCheckbox.value == "archive")
        {
            choice = confirm("Are you sure you would like to send this order to the archives?");
            
            if (choice)
            {
                form.action = "archive-confirm.asp?id=" + id;
            }
            else
            {
                alert("No orders have been moved to the archives.");
                form.action = "title-orders.asp"            
            }        
        }
        else if (form.ActionCheckbox.value == "delete")
        {
            choice = confirm("Are you sure you would like to permanently delete this order from the archive?");
            
            if (choice)
            {
                form.action = "delete-confirm.asp?id=" + id;
            }
            else
            {
                alert("No orders have been deleted.");
                form.action = "title-orders.asp"            
            }
        }
    }
}
</script>

<form method="post" action="" onsubmit="return confirmArchive(this, '<%= Request.QueryString("id") %>')">

<table border="0" width="775px">
<tr>
	<td><span style="font-size: 18px;">Order Date: <%= rsTitleOrder(10) %></span></td>
	<td>&nbsp;</td>
</tr>
<tr>
    <td nowrap="nowrap"><strong>CONTACT INFORMATION</strong></td>
    <td align="right">&nbsp;</td>
</tr>
<% do until rsContactInfo.EOF %>
	<% for each x in rsContactInfo.Fields  %>
	<tr>
	    <td><% response.Write(x.name) %></td>
	    <td><% response.Write(x.value) %></td>
	</tr>
	<% next: rsContactInfo.MoveNext %>
<% loop %>
<tr><td colspan="2">&nbsp;</td></tr>
<tr><td colspan="2">
    <strong>BUYER/BORROWER INFORMATION</strong></td></tr>
<% do until rsBuyerBorrowerInfo.EOF %>
	<% for each x in rsBuyerBorrowerInfo.Fields  %>
	<tr>
	    <td><% response.Write(x.name) %></td>
	    <td><% response.Write(x.value) %></td>
	</tr>
	<% next: rsBuyerBorrowerInfo.MoveNext %>
<% loop %>
<tr><td colspan="2">&nbsp;</td></tr>
<tr><td colspan="2">
    <strong>BUYER/BORROWER 2 INFORMATION (Optional)</strong></td></tr>
<% do until rsBuyerBorrowerInfo2.EOF %>
	<% for each x in rsBuyerBorrowerInfo2.Fields  %>
	<tr>
	    <td><% response.Write(x.name) %></td>
	    <td><% response.Write(x.value) %></td>
	</tr>
	<% next: rsBuyerBorrowerInfo2.MoveNext %>
<% loop %>
<tr><td colspan="2">&nbsp;</td></tr>
<tr><td colspan="2">
    <strong>SELLER INFORMATION (For Purchases Only)</strong></td></tr>
<% do until rsSellerInfo.EOF %>
	<% for each x in rsSellerInfo.Fields  %>
	<tr>
	    <td><% response.Write(x.name) %></td>
	    <td><% response.Write(x.value) %></td>
	</tr>
	<% next: rsSellerInfo.MoveNext %>
<% loop %>
<tr><td colspan="2">&nbsp;</td></tr>
<tr><td colspan="2">
    <strong>PROPERTY INFORMATION</strong></td></tr>
<% do until rsPropertyInfo.EOF %>
	<% for each x in rsPropertyInfo.Fields  %>
	<tr>
	    <td><% response.Write(x.name) %></td>
	    <td><% response.Write(x.value) %></td>
	</tr>
	<% next: rsPropertyInfo.MoveNext %>
<% loop %>
<tr><td colspan="2">&nbsp;</td></tr>
<tr><td colspan="2">
    <strong>LOAN INFORMATION</strong></td></tr>
<% do until rsLoanInfo.EOF %>
	<% for each x in rsLoanInfo.Fields  %>
	<tr>
	    <td><% response.Write(x.name) %></td>
	    <td><% response.Write(x.value) %></td>
	</tr>
	<% next: rsLoanInfo.MoveNext %>
<% loop %>
<tr><td colspan="2">&nbsp;</td></tr>
<tr><td colspan="2">
    <strong>GENERAL INFORMATION</strong></td></tr>
<% do until rsGeneralInfo.EOF %>
	<% for each x in rsGeneralInfo.Fields  %>
	<tr>
	    <td><% response.Write(x.name) %></td>
	    <td><% response.Write(x.value) %></td>
	</tr>
	<% next: rsGeneralInfo.MoveNext %>
<% loop %>
</table>

<br /><br />


<input id="ActionCheckbox" type="checkbox" 
<% if rsTitleOrder(9) = "No" Then %>
value="archive" />
Send To Archive
<% else %>
value="delete" />
Delete Order
<% end if %>
<br />
<input id="Submit" type="submit" value="Submit" />
<br />

</form>

</body>

</html>

