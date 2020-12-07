using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asp.Net
{
    public partial class FirstTask : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void TakeALookButton_Click(object sender, EventArgs e)
        {
            string l_nextPage= "SecondTask.aspx?number="+HeaderGridView.SelectedRow.Cells[1].Text+"&date="+HeaderGridView.SelectedRow.Cells[2].Text+"&disc="+ HeaderGridView.SelectedRow.Cells[3].Text +"&sum="+ HeaderGridView.SelectedRow.Cells[4].Text;
            Response.Redirect(l_nextPage);
        }

        protected void AddToHeadButton_Click(object sender, EventArgs e)
        {
            SqlConnection Connection = new SqlConnection("workstation id=BookWorldDataBase.mssql.somee.com;packet size=4096;user id=PaninI_SQLLogin_1;pwd=CegthGhfrnbrf1;data source=BookWorldDataBase.mssql.somee.com;persist security info=False;initial catalog=BookWorldDataBase");
            string commandText = "INSERT INTO Продажа VALUES ('" + DateTime.Now.Month +"."+DateTime.Now.Day+"."+DateTime.Now.Year+"',null,null)";
            SqlCommand Command = new SqlCommand(commandText, Connection);
            Connection.Open();
            Command.ExecuteNonQuery();
            Connection.Close();
            Response.Redirect(Request.RawUrl);
        }

        protected void AddRecordToTableButton_Click(object sender, EventArgs e)
        {
            SqlConnection Connection = new SqlConnection("workstation id=BookWorldDataBase.mssql.somee.com;packet size=4096;user id=PaninI_SQLLogin_1;pwd=CegthGhfrnbrf1;data source=BookWorldDataBase.mssql.somee.com;persist security info=False;initial catalog=BookWorldDataBase");
            
            try
            {
                string commandText = "INSERT INTO Состав_Продажи VALUES (" + HeaderGridView.SelectedRow.Cells[1].Text + ","+Convert.ToInt32(TextBox1.Text)+","+Convert.ToInt32(TextBox2.Text)+")";
                SqlCommand Command = new SqlCommand(commandText, Connection);
                Connection.Open();
                Command.ExecuteNonQuery();
                Connection.Close();
                Response.Redirect(Request.RawUrl);
            }
            catch(Exception ex) { }
        }
    }
}