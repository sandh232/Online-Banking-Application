using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BANKINGPROJECT
{
    public partial class PasswordChange : System.Web.UI.Page
    {
        private DataSet1 ds1 = new DataSet1();
        DataSet1TableAdapters.UserInfoTableAdapter tblUser = new DataSet1TableAdapters.UserInfoTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnOkay_Click(object sender, EventArgs e)
        {
            //change password: update user table with new password

            tblUser.Fill(ds1.UserInfo);
            string cardNumber = Session["cardNumber"].ToString();

            DataRow[] dr = ds1.UserInfo.Select("Card_Number = '" + cardNumber + "'");
            dr[0]["Password"] = txtConfirmPassword.Text;

            tblUser.Update(ds1);

            string script = "<script>alert('Your password has been changed');</script>";
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", script);
            Response.Redirect("Main.aspx");
        }
    }
}