using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BANKINGPROJECT
{
    public partial class CreateUser : System.Web.UI.Page
    {
        private DataSet1 ds1 = new DataSet1();
        DataSet1TableAdapters.UserInfoTableAdapter tblUser = new DataSet1TableAdapters.UserInfoTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreateAcc_Click(object sender, EventArgs e)
        {
            tblUser.Fill(ds1.UserInfo);

            DataSet1.UserInfoRow row = ds1.UserInfo.NewUserInfoRow();
            row.Name = txtName.Text;
            row.Email = txtEmail.Text;
            row.Phone_Number = txtPhone.Text;
            row.Address = txtAddress.Text;
            row.Card_Number = txtCardNum.Text;
            row.Pin = txtPin.Text;
            row.password = txtPass.Text;
            ds1.UserInfo.Rows.Add(row);

            tblUser.Update(ds1.UserInfo);
            Label1.Text = "Account created Successfully... Redirecting to login page............";
            Response.Redirect("Login.aspx");
        }
    }
}