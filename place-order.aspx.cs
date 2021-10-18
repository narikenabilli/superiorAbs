using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class place_order : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            State[] states = new State[]
            {
                new State("", "Select State"),
                new State("AL", "Alabama"),
                new State("AK", "Alaska"),
                new State("AZ", "Arizona"),
                new State("AR", "Arkansas"),
                new State("CA", "California"),
                new State("CO", "Colorado"),
                new State("CT", "Connecticut"),
                new State("DE", "Delaware"),
                new State("FL", "Florida"),
                new State("GA", "Georgia"),
                new State("HI", "Hawaii"),
                new State("ID", "Idaho"),
                new State("IL", "Illinois"),
                new State("IN", "Indiana"),
                new State("IA", "Iowa"),
                new State("KS", "Kansas"),
                new State("KY", "Kentucky"),
                new State("LA", "Louisiana"),
                new State("ME", "Maine"),
                new State("MD", "Maryland"),
                new State("MA", "Massachusetts"),
                new State("MI", "Michigan"),
                new State("MN", "Minnesota"),
                new State("MS", "Mississippi"),
                new State("MO", "Missouri"),
                new State("MT", "Montana"),
                new State("NE", "Nebraska"),
                new State("NV", "Nevada"),
                new State("NH", "New Hampshire"),
                new State("NJ", "New Jersey"),
                new State("NM", "New Mexico"),
                new State("NY", "New York"),
                new State("NC", "North Carolina"),
                new State("ND", "North Dakota"),
                new State("OH", "Ohio"),
                new State("OK", "Oklahoma"),
                new State("OR", "Oregon"),
                new State("PA", "Pennsylvania"),
                new State("RI", "Rhode Island"),
                new State("SC", "South Carolina"),
                new State("SD", "South Dakota"),
                new State("TN", "Tennessee"),
                new State("TX", "Texas"),
                new State("UT", "Utah"),
                new State("VT", "Vermont"),
                new State("VA", "Virginia"),
                new State("WA", "Washington"),
                new State("DC", "Washington D.C."),
                new State("WV", "West Virginia"),
                new State("WI", "Wisconsin"),
                new State("WY", "Wyoming")
            };


            this.ddlPropState.DataSource
                = this.ddlSellerState.DataSource
                = this.ddlBorrower2State.DataSource
                = this.ddlBorrowerState.DataSource
                = this.ddlState.DataSource = states;

            this.ddlPropState.DataMember
            = this.ddlSellerState.DataMember
            = this.ddlBorrower2State.DataMember
            = this.ddlBorrowerState.DataMember
            = this.ddlState.DataMember = "Abbr"; 

            this.ddlPropState.DataTextField
                = this.ddlSellerState.DataTextField
                = this.ddlBorrower2State.DataTextField
                = this.ddlBorrowerState.DataTextField
                = this.ddlState.DataTextField = "Name";

			this.ddlPropState.DataBind();
            this.ddlBorrower2State.DataBind();
            this.ddlBorrowerState.DataBind();
            this.ddlState.DataBind();
            this.ddlSellerState.DataBind();
			
			this.ddlPropState.SelectedValue = "Texas";
        }		
    }


    protected void OnSubmitClick(object sender, EventArgs e)
    {
        using (MySqlConnection connection = new MySqlConnection(ConfigurationManager.ConnectionStrings["default"].ConnectionString))
        {
			connection.Open();
            Int64 contactInfoID, borrowerInfoID, borrower2InfoID, sellerInfoID, propInfoID, loanInfoID, generalInfoID;
            using (MySqlCommand command = connection.CreateCommand())
            {
                command.CommandText = @"INSERT INTO ContactInfo (CompanyName, FullName, EmailAddress, LoanOfficer, 
                        Processor, StreetAddress, City, State, Zip, PhoneNumber, FaxNumber) 
                    VALUES (@CompanyName, @FullName, @EmailAddress, @LoanOfficer, 
                        @Processor, @StreetAddress, @City, @State, @Zip, @PhoneNumber, @FaxNumber);SELECT LAST_INSERT_ID()";
                command.Parameters.Add("@CompanyName", MySqlDbType.VarChar, 50).Value = this.tbCompanyName.Text.Trim();
                command.Parameters.Add("@FullName", MySqlDbType.VarChar, 50).Value = this.tbFullName.Text.Trim();
                command.Parameters.Add("@EmailAddress", MySqlDbType.VarChar, 50).Value = this.tbEmail.Text.Trim();
                command.Parameters.Add("@LoanOfficer", MySqlDbType.VarChar, 50).Value = this.tbLoanOfficer.Text.Trim();
                command.Parameters.Add("@Processor", MySqlDbType.VarChar, 50).Value = this.tbProcessor.Text.Trim();
                command.Parameters.Add("@StreetAddress", MySqlDbType.VarChar, 50).Value = this.tbStreetAddress.Text.Trim();
                command.Parameters.Add("@City", MySqlDbType.VarChar, 50).Value = this.tbCity.Text.Trim();
                command.Parameters.Add("@State", MySqlDbType.VarChar, 50).Value = this.ddlState.SelectedValue.Trim();
                command.Parameters.Add("@Zip", MySqlDbType.VarChar, 15).Value = this.tbZip.Text.Trim();
                command.Parameters.Add("@PhoneNumber", MySqlDbType.VarChar, 20).Value = this.tbPhoneNumber.Text.Trim();
                command.Parameters.Add("@FaxNumber", MySqlDbType.VarChar, 20).Value = this.tbFaxNumber.Text.Trim();
				command.ExecuteScalar();
                contactInfoID = Convert.ToInt32(command.ExecuteScalar());
            }

            using (MySqlCommand command = connection.CreateCommand())
            {
                command.CommandText = @"INSERT INTO BuyerBorrowerInfo (Borrower, BorrowerSSN, Spouse, SpouseSSN, SpouseIs, HomeNumber, 
                        WorkNumber, CellNumber, StreetAddress, City, State, Zip) 
                    VALUES (@Borrower, @BorrowerSSN, @Spouse, @SpouseSSN, @SpouseIs, @HomeNumber, 
                        @WorkNumber, @CellNumber, @StreetAddress, @City, @State, @Zip);SELECT LAST_INSERT_ID()";
                command.Parameters.Add("@Borrower", MySqlDbType.VarChar, 50).Value = this.tbBorrower.Text.Trim();
                command.Parameters.Add("@BorrowerSSN", MySqlDbType.VarChar, 15).Value = this.tbBorrowerSSN.Text.Trim();
                command.Parameters.Add("@Spouse", MySqlDbType.VarChar, 50).Value = this.tbBorrowerSpouse.Text.Trim();
                command.Parameters.Add("@SpouseSSN", MySqlDbType.VarChar, 15).Value = this.tbBorrowerSpouseSSN.Text.Trim();
                command.Parameters.Add("@SpouseIs", MySqlDbType.VarChar, 20).Value = this.rblBorrower.SelectedValue.Trim();
                command.Parameters.Add("@HomeNumber", MySqlDbType.VarChar, 20).Value = this.tbBorrowerHomeNumber.Text.Trim();
                command.Parameters.Add("@WorkNumber", MySqlDbType.VarChar, 20).Value = this.tbBorrowerWorkNumber.Text.Trim();
                command.Parameters.Add("@CellNumber", MySqlDbType.VarChar, 20).Value = this.tbBorrowerCellNumber.Text.Trim();
                command.Parameters.Add("@StreetAddress", MySqlDbType.VarChar, 50).Value = this.tbBorrowerStreetAddress.Text.Trim();
                command.Parameters.Add("@City", MySqlDbType.VarChar, 50).Value = this.tbBorrowerCity.Text.Trim();
                command.Parameters.Add("@State", MySqlDbType.VarChar, 50).Value = this.ddlBorrowerState.SelectedValue.Trim();
                command.Parameters.Add("@Zip", MySqlDbType.VarChar, 15).Value = this.tbBorrowerZip.Text.Trim();
                borrowerInfoID = Convert.ToInt32(command.ExecuteScalar());
            }

            using (MySqlCommand command = connection.CreateCommand())
            {
                command.CommandText = @"INSERT INTO BuyerBorrowerInfo (Borrower, BorrowerSSN, Spouse, SpouseSSN, SpouseIs, HomeNumber, 
                        WorkNumber, CellNumber, StreetAddress, City, State, Zip) 
                    VALUES (@Borrower, @BorrowerSSN, @Spouse, @SpouseSSN, @SpouseIs, @HomeNumber, 
                        @WorkNumber, @CellNumber, @StreetAddress, @City, @State, @Zip);SELECT LAST_INSERT_ID()";
                command.Parameters.Add("@Borrower", MySqlDbType.VarChar, 50).Value = this.tbBorrower2.Text.Trim();
                command.Parameters.Add("@BorrowerSSN", MySqlDbType.VarChar, 15).Value = this.tbBorrower2Ssn.Text.Trim();
                command.Parameters.Add("@Spouse", MySqlDbType.VarChar, 50).Value = this.tbBorrower2Spouse.Text.Trim();
                command.Parameters.Add("@SpouseSSN", MySqlDbType.VarChar, 15).Value = this.tbBorrower2SpouseSsn.Text.Trim();
                command.Parameters.Add("@SpouseIs", MySqlDbType.VarChar, 20).Value = this.rblBorrower2.SelectedValue.Trim();
                command.Parameters.Add("@HomeNumber", MySqlDbType.VarChar, 20).Value = this.tbBorrower2HomeNumber.Text.Trim();
                command.Parameters.Add("@WorkNumber", MySqlDbType.VarChar, 20).Value = this.tbBorrower2WorkNunmber.Text.Trim();
                command.Parameters.Add("@CellNumber", MySqlDbType.VarChar, 20).Value = this.tbBorrower2CellNumber.Text.Trim();
                command.Parameters.Add("@StreetAddress", MySqlDbType.VarChar, 50).Value = this.tbBorrower2StreetAddress.Text.Trim();
                command.Parameters.Add("@City", MySqlDbType.VarChar, 50).Value = this.tbBorrower2City.Text.Trim();
                command.Parameters.Add("@State", MySqlDbType.VarChar, 50).Value = this.ddlBorrower2State.SelectedValue.Trim();
                command.Parameters.Add("@Zip", MySqlDbType.VarChar, 15).Value = this.tbBorrower2Zip.Text.Trim();
                borrower2InfoID = Convert.ToInt32(command.ExecuteScalar());
            }

            using (MySqlCommand command = connection.CreateCommand())
            {
                command.CommandText = @"INSERT INTO SellerInfo (Seller, SellerSSN, Spouse, SpouseSSN, HomeNumber, 
                            WorkNumber, CellNumber, StreetAddress, City, State, Zip)
                        VALUES (@Seller, @SellerSSN, @Spouse, @SpouseSSN, @HomeNumber, 
                            @WorkNumber, @CellNumber, @StreetAddress, @City, @State, @Zip);SELECT LAST_INSERT_ID()";
                command.Parameters.Add("@Seller", MySqlDbType.VarChar, 50).Value = this.tbSeller.Text.Trim();
                command.Parameters.Add("@SellerSSN", MySqlDbType.VarChar, 50).Value = this.tbSellerSsn.Text.Trim();
                command.Parameters.Add("@Spouse", MySqlDbType.VarChar, 50).Value = this.tbSellerSpouse.Text.Trim();
                command.Parameters.Add("@SpouseSSN", MySqlDbType.VarChar, 50).Value = this.tbSellerSpouseSsn.Text.Trim();
                command.Parameters.Add("@HomeNumber", MySqlDbType.VarChar, 50).Value = this.tbSellerHomeNumber.Text.Trim();
                command.Parameters.Add("@WorkNumber", MySqlDbType.VarChar, 50).Value = this.tbSellerWorkNumber.Text.Trim();
                command.Parameters.Add("@CellNumber", MySqlDbType.VarChar, 50).Value = this.tbSellerCellNumber.Text.Trim();
                command.Parameters.Add("@StreetAddress", MySqlDbType.VarChar, 50).Value = this.tbSellerStreetAddress.Text.Trim();
                command.Parameters.Add("@City", MySqlDbType.VarChar, 50).Value = this.tbSellerCity.Text.Trim();
                command.Parameters.Add("@State", MySqlDbType.VarChar, 50).Value = this.ddlSellerState.SelectedValue.Trim();
                command.Parameters.Add("@Zip", MySqlDbType.VarChar, 15).Value = this.tbSellerZip.Text.Trim();

                sellerInfoID = Convert.ToInt32(command.ExecuteScalar());
            }

            using (MySqlCommand command = connection.CreateCommand())
            {
                command.CommandText = @"INSERT INTO PropertyInfo (StreetAddress, City, State, Zip, County, LegalDescription)
                        VALUES (@StreetAddress, @City, @State, @Zip, @County, @LegalDescription);SELECT LAST_INSERT_ID()";
                command.Parameters.Add("@StreetAddress", MySqlDbType.VarChar, 50).Value = this.tbPropStreetAddress.Text.Trim();
				command.Parameters.Add("@County", MySqlDbType.VarChar, 50).Value = this.tbPropCounty.Text.Trim();
                command.Parameters.Add("@City", MySqlDbType.VarChar, 50).Value = this.tbPropCity.Text.Trim();
                command.Parameters.Add("@State", MySqlDbType.VarChar, 50).Value = this.ddlPropState.SelectedValue.Trim();
                command.Parameters.Add("@Zip", MySqlDbType.VarChar, 15).Value = this.tbPropZip.Text.Trim();
                command.Parameters.Add("@LegalDescription", MySqlDbType.Text).Value = this.tbPropLegalDescription.Text.Trim();
                propInfoID = Convert.ToInt32(command.ExecuteScalar());
            }

            using (MySqlCommand command = connection.CreateCommand())
            {
                command.CommandText = @"INSERT INTO LoanInfo (LoanAmount, LoanType, LoanNumber)
                        VALUES (@LoanAmount, @LoanType, @LoanNumber);SELECT LAST_INSERT_ID()";
                command.Parameters.Add("@LoanAmount", MySqlDbType.VarChar, 15).Value = this.tbLoanAmount.Text.Trim();
                command.Parameters.Add("@LoanType", MySqlDbType.VarChar, 50).Value = this.rblLoanType.SelectedValue.Trim();
                command.Parameters.Add("@LoanNumber", MySqlDbType.VarChar, 20).Value = this.tbLoanNumber.Text.Trim();
                loanInfoID = Convert.ToInt32(command.ExecuteScalar());
            }


            using (MySqlCommand command = connection.CreateCommand())
            {
                command.CommandText = @"INSERT INTO GeneralInfo (EstimatedClosingDate, SalesPrice, HasPreviousSurvey, HasPreviousTitle, AdditionalNotes)
                        VALUES (@EstimatedClosingDate, @SalesPrice, @HasPreviousSurvey, @HasPreviousTitle, @AdditionalNotes);SELECT LAST_INSERT_ID()";
                command.Parameters.Add("@EstimatedClosingDate", MySqlDbType.VarChar, 15).Value = this.tbClosingDate.Text.Trim();
                command.Parameters.Add("@SalesPrice", MySqlDbType.VarChar, 15).Value = this.tbSalesPrice.Text.Trim();
                command.Parameters.Add("@HasPreviousSurvey", MySqlDbType.VarChar, 10).Value = this.rblPreviousSurvey.SelectedValue.Trim();
                command.Parameters.Add("@HasPreviousTitle", MySqlDbType.VarChar, 10).Value = this.rblPreviousPolicy.SelectedValue.Trim();
                command.Parameters.Add("@AdditionalNotes", MySqlDbType.Text).Value = this.tbAdditionalNotes.Text.Trim();
                generalInfoID = Convert.ToInt32(command.ExecuteScalar());
            }
            
            Int64 orderID;
            using (MySqlCommand command = connection.CreateCommand())
            {
                command.CommandText = @"INSERT INTO TitleOrder (ContactInfoID, BuyerBorrowerInfoID, BuyerBorrowerInfo2ID, SellerInfoID, PropertyInfoID, LoanInfoID, GeneralInfoID)
                        VALUES (@ContactInfoID, @BuyerBorrowerInfoID, @BuyerBorrowerInfo2ID, @SellerInfoID, @PropertyInfoID, @LoanInfoID, @GeneralInfoID);SELECT LAST_INSERT_ID()";
                command.Parameters.Add("@ContactInfoID", MySqlDbType.Int32).Value = contactInfoID;
                command.Parameters.Add("@BuyerBorrowerInfoID", MySqlDbType.Int32).Value = borrowerInfoID;
                command.Parameters.Add("@BuyerBorrowerInfo2ID", MySqlDbType.Int32).Value = borrower2InfoID;
                command.Parameters.Add("@SellerInfoID", MySqlDbType.Int32).Value = sellerInfoID;
                command.Parameters.Add("@PropertyInfoID", MySqlDbType.Int32).Value = propInfoID;
                command.Parameters.Add("@LoanInfoID", MySqlDbType.Int32).Value = loanInfoID;
                command.Parameters.Add("@GeneralInfoID", MySqlDbType.Int32).Value = generalInfoID;
                orderID = Convert.ToInt32(command.ExecuteScalar());
            }

            using (SmtpClient client = new SmtpClient("relay-hosting.secureserver.net", 25))
            using (MailMessage message = new MailMessage())
            {
                client.Credentials = new System.Net.NetworkCredential("relay@marketcentercreative.com", "MailRelay2014!");
                message.Body = "<html><head><style><!--body { font-family: arial,sans-serif; font-size: 13; }--></style></head><body>" +
	            "New Title Request<br /><br />" +
	            "<a href='http://www.superiorabstract.com/admin/view-order.asp?id=" + orderID.ToString() + "'>View Order</a>" +
	            "</body></html>";
                message.IsBodyHtml = true;
                message.From = new MailAddress(this.tbEmail.Text.Trim());
				//message.From = new MailAddress("relay@marketcentercreative.com");

                if (this.tbEmail.Text.Contains("@superiorabstract.com"))
                {
                    message.To.Add(new MailAddress("titlework@superiorabstract.com"));
					//message.To.Add(new MailAddress("maclydd@gmail.com"));
                    message.Subject = "Form Spam";
                }
                else
                {
                    message.To.Add(new MailAddress("titlework@superiorabstract.com"));
                    //message.To.Add(new MailAddress("maclydd@gmail.com"));
                    message.Subject = "Title Request";
                }

                client.Send(message);
            }

            this.Response.Redirect("~/place-order-confirm.aspx");

        }

    }
}


