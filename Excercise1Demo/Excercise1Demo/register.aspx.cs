using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace Excercise1Demo
{
    public partial class register : System.Web.UI.Page
    {
        private SqlConnection conn;
        private SqlCommand cmd;
        String connStr = WebConfigurationManager.ConnectionStrings["ConstructionCompanyDB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(connStr);
            cmd = new SqlCommand("insert into Accounts(firstname, lastname, username, password) values (@firstname, @lastname, @username, @password)", conn);
            cmd.Parameters.AddWithValue("@firstname", txtFirstName.Text);
            cmd.Parameters.AddWithValue("@lastname", txtLastName.Text);
            cmd.Parameters.AddWithValue("@username", txtUsername.Text);
            cmd.Parameters.AddWithValue("@password", txtPassword.Text);

            try
            {
                conn.Open();
                if (cmd.ExecuteNonQuery() == 1)
                {
                    lblStatus.Text = "Your Message sent successfully";
                }
            }
            catch (Exception exception)
            {
                lblStatus.Text = exception.ToString();
            }
        }
    }
}