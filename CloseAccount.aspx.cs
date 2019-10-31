using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BANKINGPROJECT
{
    public partial class CloseAccount : System.Web.UI.Page
    {
        private DataSet1 ds1 = new DataSet1();
        DataSet1TableAdapters.UserInfoTableAdapter tblUser = new DataSet1TableAdapters.UserInfoTableAdapter();


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnYes_Click(object sender, EventArgs e)
        {
            //delete user info from table.
            string cardNumber = Session["cardNumber"].ToString();

            tblUser.Fill(ds1.UserInfo);
            DataRow[] dr = ds1.UserInfo.Select("Card_Number = '" + cardNumber + "'");
            dr[0].Delete();

            tblUser.Update(dr);

            string script = "<script>alert('Your account has been deleted.' );</script>";
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", script);

            Response.Redirect("Login.aspx");
        }

        protected void btnNo_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main.aspx");
        }
    }
}