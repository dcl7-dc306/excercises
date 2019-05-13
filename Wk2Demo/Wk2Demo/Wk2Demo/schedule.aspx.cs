using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace Wk2Demo
{
    public partial class schedule : System.Web.UI.Page
    {
        private SqlConnection conn;
        private SqlCommand cmd;
        String connStr = WebConfigurationManager.ConnectionStrings["ArtSchoolDB"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(connStr);
            conn.Open();
            cmd = new SqlCommand("SELECT * FROM Schedule ORDER BY DAY", conn);
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }

        protected void LinkSelect_Click(object sender, EventArgs e)
        {
            string key = (sender as LinkButton).CommandArgument;
            Response.Redirect("UpdateSchedule.aspx?id=" + key);
        }

        protected void LnkSelect_Click(object sender, EventArgs e)
        {
            string key = (sender as LinkButton).CommandArgument;
            Response.Redirect("UpdateSchedule.aspx?id=" + key);
        }
    }
}