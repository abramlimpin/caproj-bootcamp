using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

public partial class Products_Add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetCategories();
        }
    }

    void GetCategories()
    {
        using (SqlConnection con = new SqlConnection(Helper.GetCon()))
        {
            string query = @"SELECT catID, name FROM categories ORDER BY name";
            con.Open();
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                using (SqlDataReader dr = cmd.ExecuteReader())
                {
                    ddlCategories.DataSource = dr;
                    ddlCategories.DataTextField = "name";
                    ddlCategories.DataValueField = "catID";
                    ddlCategories.DataBind();
                }
            }
        }
    }
}