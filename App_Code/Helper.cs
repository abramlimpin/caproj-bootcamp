using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Helper
/// </summary>
public class Helper
{
    public Helper()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    /// <summary>
    /// Get connection string value from
    /// web.config
    /// </summary>
    /// <returns>connection string value</returns>
    public static string GetCon()
    {
        return ConfigurationManager.
            ConnectionStrings["MyCon"].
            ConnectionString;
    }
}