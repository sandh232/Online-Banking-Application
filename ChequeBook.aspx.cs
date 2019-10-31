using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BANKINGPROJECT
{
    public partial class ChequeBook : System.Web.UI.Page
    {
        private DataSet1 ds1 = new DataSet1();
        DataSet1TableAdapters.ChequingAccountTableAdapter tblChequing = new DataSet1TableAdapters.ChequingAccountTableAdapter();
        DataSet1TableAdapters.SavingsAccountTableAdapter tblSavings = new DataSet1TableAdapters.SavingsAccountTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            //DropDownList3.SelectedIndex = 0;
            //DropDownList4.SelectedIndex = 0;
            //string cardNumber = Session["cardNumber"].ToString();
            //lblCost.Text = cardNumber;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //back to main
            Response.Redirect("Main.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            //send cheque book
            //charge them for chequebook
            double cost = Convert.ToInt32(DropDownList4.SelectedValue) * 0.5;
            string account = DropDownList3.SelectedValue.ToString();
            string cardNumber = Session["cardNumber"].ToString();

            tblChequing.Fill(ds1.ChequingAccount);
            tblSavings.Fill(ds1.SavingsAccount);
            DataRow[] dr;
            if (account.Equals("chequing"))
            {
                dr = ds1.ChequingAccount.Select("Card_Number = '" + cardNumber + "'");
                dr[0]["Balance"] = (Convert.ToDouble(dr[0]["Balance"].ToString()) - cost);
                tblChequing.Update(ds1.ChequingAccount);

            }
            else if (account.Equals("savings"))
            {
                dr = ds1.SavingsAccount.Select("Card_Number = '" + cardNumber + "'");
                dr[0]["Balance"] = (Convert.ToDouble(dr[0]["Balance"].ToString()) - cost);
                tblSavings.Update(ds1.SavingsAccount);

            }

            string script = "<script>alert('Your cheque book request order has been submitted. " +
                            "\\nThe cost of the cheque book will be deducted from your account. " +
                            "\\nThe cheque book will be mailed to the address on file.' );</script>";
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", script);
        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            double cost = Convert.ToInt32(DropDownList4.SelectedValue) * 0.5;
            lblCost.Text = "$" + cost.ToString();

        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            //string account = DropDownList3.SelectedValue.ToString();
            //lblCost.Text = account;

        }
    }
}