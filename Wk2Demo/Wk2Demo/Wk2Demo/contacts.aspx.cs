using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace Wk2Demo
{
    public partial class contacts : System.Web.UI.Page
    {
        private SqlConnection conn;
        private SqlCommand cmd;
        String connStr = WebConfigurationManager.ConnectionStrings["ArtSchoolDB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(connStr);
            cmd = new SqlCommand("insert into Contact(username, email, phone, message) values (@username, @email, @phone, @message)", conn);
            cmd.Parameters.AddWithValue("@username", txtName.Text);
            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@phone", txtPhone.Text);
            cmd.Parameters.AddWithValue("@message", txtMessage.Text);

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