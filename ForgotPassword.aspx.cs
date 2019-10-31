using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BANKINGPROJECT
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        private DataSet1 ds1 = new DataSet1();
        DataSet1TableAdapters.UserInfoTableAdapter tblUser = new DataSet1TableAdapters.UserInfoTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnOkay_Click(object sender, EventArgs e)
        {
            tblUser.Fill(ds1.UserInfo);
            DataRow[] dr = ds1.UserInfo.Select("Card_Number = '" + txtCardNumber.Text + "'"
                + " AND Pin = '" + txtPin.Text + "'");

            //Label1.Text = dr.Length.ToString();
            if (dr.Length == 0)
            {
                Label1.Text = "INVALID CARD INFO, PLEASE TRY AGAIN";
            }
            else
            {
                Session["cardNumber"] = txtCardNumber.Text;
                Response.Redirect("PasswordChange.aspx");
            }

        }
    }
}