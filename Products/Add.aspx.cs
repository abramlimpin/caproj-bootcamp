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

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(Helper.GetCon()))
        {
            string query = @"INSERT INTO products VALUES
                (@catID, @name, @description, @price, @image,
                @available, @critical, @maximum,
                @status, @dateAdded, @dateModified)";
            con.Open();
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                cmd.Parameters.AddWithValue("@catID", ddlCategories.SelectedValue);
                cmd.Parameters.AddWithValue("@name", txtName.Text);
                cmd.Parameters.AddWithValue("@description", txtDesc.Text);
                cmd.Parameters.AddWithValue("@price", txtPrice.Text);
                string fileName = DateTime.Now.ToString("yyyyMMddHHmmss-") +
                    fuImage.FileName;
                
                cmd.Parameters.AddWithValue("@image", fileName);
                fuImage.SaveAs(Server.MapPath("~/images/products/") + fileName);

                cmd.Parameters.AddWithValue("@available", 0);
                cmd.Parameters.AddWithValue("@critical", txtCritical.Text);
                cmd.Parameters.AddWithValue("@maximum", txtMax.Text);
                cmd.Parameters.AddWithValue("@status", "Out of Stock");
                cmd.Parameters.AddWithValue("@dateAdded", DateTime.Now);
                cmd.Parameters.AddWithValue("@dateModified", DBNull.Value);
                cmd.ExecuteNonQuery();
                Response.Redirect("Default.aspx");
            }
        }
    }
}