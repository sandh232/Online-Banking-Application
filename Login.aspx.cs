using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BANKINGPROJECT
{
    public partial class Login : System.Web.UI.Page
    {
        private DataSet1 ds1 = new DataSet1();
        DataSet1TableAdapters.UserInfoTableAdapter tblUser = new DataSet1TableAdapters.UserInfoTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateUser.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            tblUser.Fill(ds1.UserInfo);
            DataRow[] dr = ds1.UserInfo.Select("Card_Number = '" + txtCardnum.Text + "'"
                + " AND Password = '" + txtPass.Text + "'");

            //Label1.Text = dr.Length.ToString();
            if(dr.Length == 0)
            {
                Label1.Text = "INVALID LOGIN INFO, PLEASE TRY AGAIN";
            }
            else
            {
                Label1.Text = "LOGIN SUCCESSFUL";
                Session["cardNumber"] = txtCardnum.Text;
                Response.Redirect("Main.aspx");
            } 
        }

        protected void btnForgot_Click(object sender, EventArgs e)
        {
            Response.Redirect("ForgotPassword.aspx");
        }
    }
}