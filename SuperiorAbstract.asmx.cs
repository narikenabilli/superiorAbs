using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.Script.Services;
using System.Web.Services;

namespace SuperiorAbstract
{
    /// <summary>
    /// Descripción breve de SuperiorAbstract
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // Para permitir que se llame a este servicio web desde un script, usando ASP.NET AJAX, quite la marca de comentario de la línea siguiente. 
    // [System.Web.Script.Services.ScriptService]
    public class SuperiorAbstract : System.Web.Services.WebService
    {
        private decimal Pwoc { get; set; }

        [WebMethod]
        [ScriptMethod(UseHttpGet = true, ResponseFormat = ResponseFormat.Json)]
        public string PWOC(string EstimatedClosingDate, string NewLoanAmount, string ExistingPayoffAmount, string ExistingLoanCloseDate, string Endorsement, string TitleCompanyCharges)
        {
            DateTime estimatedClosingDate = string.IsNullOrEmpty(EstimatedClosingDate) ? DateTime.MinValue : DateTime.Parse(EstimatedClosingDate.Trim());
            decimal newLoanAmount = string.IsNullOrEmpty(NewLoanAmount) ? 0m : decimal.Parse(NewLoanAmount.Trim());
            decimal existingPayoffAmount = string.IsNullOrEmpty(ExistingPayoffAmount) ? 0m : decimal.Parse(ExistingPayoffAmount.Trim());
            DateTime existingLoanCloseDate = string.IsNullOrEmpty(ExistingLoanCloseDate) ? DateTime.MinValue : DateTime.Parse(ExistingLoanCloseDate.Trim());

            Pwoc = Calculator.PremiumWithoutCreditAndEndorsements(newLoanAmount);
            
            decimal creditAmount = 0m;

            if (estimatedClosingDate != DateTime.MinValue && existingLoanCloseDate != DateTime.MinValue && existingPayoffAmount > 0)
                creditAmount = Calculator.CalculateCredit(existingPayoffAmount, existingLoanCloseDate, estimatedClosingDate);

            string CreditValue = string.Format("{0:c}", creditAmount);

            string[] EndorsementList = Endorsement.Split('-');
            decimal commonEndorsementCost = 0m;

            for (int x = 0; x < EndorsementList.Length; x++)
            {
                commonEndorsementCost += EndorsementCost(EndorsementList[x]);
            }

            string EndorsementsValue = string.Format("{0:c}", commonEndorsementCost);

            decimal estimatedPremium = Pwoc + creditAmount + commonEndorsementCost;
            string EstimatedPremiumValue = string.Format("{0:c}", estimatedPremium);

            string[] titleCompanyChargesList = TitleCompanyCharges.Split('-');
            decimal titleCompanyCost = 0m;

            for (int x = 0; x < titleCompanyChargesList.Length; x++)
            {
                titleCompanyCost += EndorsementCost(titleCompanyChargesList[x]);
            }
            
            string TitleCoChargesValue = string.Format("{0:c}", titleCompanyCost);

            decimal estimatedTotalCharges = estimatedPremium + titleCompanyCost;

            string EstimatedTotalValue = string.Format("{0:c}", estimatedTotalCharges);

            CalculatorResult cr = new CalculatorResult();
            cr.PremiumWithoutCredit = Pwoc.ToString();
            cr.TotalEndorsements = commonEndorsementCost.ToString();
            cr.Credit = CreditValue;
            cr.EstimatedNewPremium = EstimatedPremiumValue;
            cr.TitleCompanyCharges = TitleCoChargesValue;
            cr.EstimatedTotalCharges = EstimatedTotalValue;

            JavaScriptSerializer serializer = new JavaScriptSerializer();
            string json = serializer.Serialize(cr);
            return json;
        }

        private decimal EndorsementCost(string itemValue)
        {
            if (itemValue.Contains('%'))
            {
                decimal percentage = decimal.Parse(itemValue.Replace("%", string.Empty)) / 100;
                if (percentage == .05m && Pwoc <= 1000m)
                {
                    return 50m;
                }
                return percentage * Pwoc;
            }
            else
            {
                return decimal.Parse(itemValue.Replace("$", string.Empty));
            }
        }
    }
}
