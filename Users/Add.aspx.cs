using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Users_Add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetUserTypes();
        }
    }

    void GetUserTypes()
    {
        using (SqlConnection con = new SqlConnection(Helper.GetCon()))
        {
            string query = @"SELECT typeID, userType
                FROM types ORDER BY userType";
            con.Open();
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                using (SqlDataReader dr = cmd.ExecuteReader())
                {
                    ddlTypes.DataSource = dr;
                    ddlTypes.DataTextField = "userType";
                    ddlTypes.DataValueField = "typeID";
                    ddlTypes.DataBind();
                }
            }
        }
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(Helper.GetCon()))
        {
            string query = @"INSERT INTO users VALUES
                (@typeID, @firstName, @lastName,
                @email, @password, @mobile,
                @status, @dateAdded, @dateModified)";
            con.Open();
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                cmd.Parameters.AddWithValue("@typeID", ddlTypes.SelectedValue);
                cmd.Parameters.AddWithValue("@firstName", txtFN.Text);
                cmd.Parameters.AddWithValue("@lastName", txtLN.Text);
                cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@password", txtPassword.Text);
                cmd.Parameters.AddWithValue("@mobile", txtMobile.Text);
                cmd.Parameters.AddWithValue("@status", "Active");
                cmd.Parameters.AddWithValue("@dateAdded", DateTime.Now);
                cmd.Parameters.AddWithValue("dateModified", DBNull.Value);
                cmd.ExecuteNonQuery();
                Response.Redirect("Default.aspx");
            }
        }
    }
}