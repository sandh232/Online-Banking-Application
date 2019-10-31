using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BANKINGPROJECT
{

    public partial class Balance : System.Web.UI.Page
    {
        private DataSet1 ds1 = new DataSet1();
        DataSet1TableAdapters.ChequingAccountTableAdapter tblChequing = new DataSet1TableAdapters.ChequingAccountTableAdapter();
        DataSet1TableAdapters.SavingsAccountTableAdapter tblSavings = new DataSet1TableAdapters.SavingsAccountTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            string cardNumber = Session["cardNumber"].ToString();
            tblChequing.Fill(ds1.ChequingAccount);
            tblSavings.Fill(ds1.SavingsAccount);

            DataRow[] drChequing = ds1.ChequingAccount.Select("Card_Number = '" + cardNumber + "'");
            DataRow[] drSavings = ds1.SavingsAccount.Select("Card_Number = '" + cardNumber + "'");

            chequingAccNum.Text = drChequing[0]["Account_Number"].ToString();
            chequingBalance.Text = "$" + drChequing[0]["Balance"].ToString();

            savingsAccNum.Text = drSavings[0]["Account_Number"].ToString(); ;
            savingsBalance.Text = "$" + drSavings[0]["Balance"].ToString();
        }
    }
}