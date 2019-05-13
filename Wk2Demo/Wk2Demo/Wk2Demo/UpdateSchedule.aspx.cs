using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Wk2Demo
{
    public partial class UpdateSchedule : System.Web.UI.Page
    {
        private SqlConnection conn;
        private SqlCommand cmd;
        SqlDataReader reader;
        String connStr = WebConfigurationManager.ConnectionStrings["ArtSchoolDB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string user = Request.QueryString["id"];
                conn = new SqlConnection(connStr);
                cmd = new SqlCommand("SELECT * FROM Schedule WHERE id=@user", conn);
                cmd.Parameters.AddWithValue("@user", user);
                try
                {
                    conn.Open();
                    reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        txtDay.Text = reader["day"].ToString();
                        txtTime.Text = reader["time"].ToString();
                        txtTopic.Text = reader["topic"].ToString();
                        txtTutor.Text = reader["tutor"].ToString();
                        txtScheduleID.Text = reader["id"].ToString();
                    }
                }
                catch (Exception ex)
                {
                    lblStatus.Text = ex.Message;
                }
            }
            else
            {
                lblStatus.Text = User + " After Update";
            }

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            conn = new SqlConnection(connStr);
            string user = Request.QueryString["id"];
            cmd = new SqlCommand("UPDATE Schedule SET day=@day, time=@time, topic=@topic, tutor=@tutor WHERE id = @user", conn);
            cmd.Parameters.AddWithValue("@day", txtDay.Text);
            cmd.Parameters.AddWithValue("@time", txtTime.Text);
            cmd.Parameters.AddWithValue("@topic", txtTopic.Text);
            cmd.Parameters.AddWithValue("@tutor", txtTutor.Text);
            cmd.Parameters.AddWithValue("@user", user);

            try
            {
                conn.Open();
                if(cmd.ExecuteNonQuery() == 1)
                {
                    //lblStatus.ForeColor = System.Drawing.Color.Green;
                    //lblStatus.Text = "Updated Successfully!" + user;
                    Response.Redirect("schedule.aspx");
                }

                conn.Close();
            }
            catch(Exception ex)
            {
                lblStatus.Text = ex.Message;
            }

        }
    }
}