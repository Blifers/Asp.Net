using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp.Net
{
    public partial class SecondTask : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ChequeNumberLabel.Text = Convert.ToString(Request.QueryString["number"]);
            DateLabel.Text += Convert.ToString(Request.QueryString["date"]);
            DiscountCardLabel.Text += Convert.ToString(Request.QueryString["disc"]);
            ChequeSumLabel.Text += Convert.ToString(Request.QueryString["sum"]);
        }

        protected void BackLinkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("FirstTask.aspx");

        }
    }
}