using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

public partial class Products_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GetProducts();
    }

    void GetProducts()
    {
        using (SqlConnection con = new SqlConnection(Helper.GetCon()))
        {
            // INNER JOIN
            string query = @"SELECT p.productNo, p.image, p.name,
                p.description, p.price,  c.name AS catName, p.status,
                p.dateAdded, p.dateModified
                FROM products p 
                INNER JOIN categories c ON p.catID = c.catID";
            con.Open();
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                using (SqlDataReader dr = cmd.ExecuteReader())
                {
                    lvProducts.DataSource = dr;
                    lvProducts.DataBind();
                }
            }
        }
    }
}