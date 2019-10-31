using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BANKINGPROJECT
{
    public partial class UpdateInfo : System.Web.UI.Page
    {
        private string cardNumber;
        private DataSet1 ds1 = new DataSet1();
        DataSet1TableAdapters.UserInfoTableAdapter tblUser = new DataSet1TableAdapters.UserInfoTableAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if(!IsPostBack)
            {
                tblUser.Fill(ds1.UserInfo);
                cardNumber = Session["cardNumber"].ToString();

                DataRow[] dr = ds1.UserInfo.Select("Card_Number = '" + cardNumber + "'");
                TextBox1.Text = dr[0]["Email"].ToString();
                TextBox2.Text = dr[0]["Phone_Number"].ToString();
                TextBox3.Text = dr[0]["Address"].ToString();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            tblUser.Fill(ds1.UserInfo);
            cardNumber = Session["cardNumber"].ToString();

            DataRow[] dr = ds1.UserInfo.Select("Card_Number = '" + cardNumber + "'");
            dr[0]["Email"] = TextBox1.Text;
            dr[0]["Phone_Number"] = TextBox2.Text;
            dr[0]["Address"] = TextBox3.Text;

            tblUser.Update(ds1.UserInfo);
            ds1.AcceptChanges();
           // tblUser.Transaction.Commit();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main.aspx");
        }
    }
}