using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{    
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie mdsessionCokiesObj = HttpContext.Current.Request.Cookies["Alfalaah"];
        if (mdsessionCokiesObj == null)
        {
            SetContactCookies();
        }
    }
    public string GetIpAddress()
    {
        var ipAddress = string.Empty;
        if (Request != null && Request.ServerVariables["HTTP_X_FORWARDED_FOR"] != null)
        {
            ipAddress = Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
        }
        else if (!string.IsNullOrEmpty(Request.UserHostAddress))
        {
            ipAddress = Request.UserHostAddress;
        }
        return ipAddress;
    }
    public void SetContactCookies(int cnt = 0)
    {
        try
        {
            HttpCookie mdsessionCokiesObj = new HttpCookie("Alfalaah");
            mdsessionCokiesObj["UserIP"] = GetIpAddress();
            mdsessionCokiesObj["CurDate"] = DateTime.Now.ToString("dd/MMM/yyyy");
            mdsessionCokiesObj["CurID"] = cnt.ToString();
            mdsessionCokiesObj.Expires = DateTime.Now.AddDays(1);
            HttpContext.Current.Response.Cookies.Add(mdsessionCokiesObj);
        }
        catch { }
    }
    public void RemoveCookies()
    {
        HttpCookie mdsessionCokiesObj = HttpContext.Current.Request.Cookies["Alfalaah"];
        if (mdsessionCokiesObj != null)
        {
            mdsessionCokiesObj.Expires = DateTime.Now.AddDays(-1);
            HttpContext.Current.Response.Cookies.Set(mdsessionCokiesObj);
        }
    }
    public int GetCount_Contact()
    {
        int CurID = 0;
        try
        {
            HttpCookie mdsessionCokiesObj = HttpContext.Current.Request.Cookies["Alfalaah"];
            if (mdsessionCokiesObj != null)
            {
                if (mdsessionCokiesObj["CurDate"] == DateTime.Now.ToString("dd/MMM/yyyy"))
                    CurID = Convert.ToInt32(mdsessionCokiesObj["CurID"]);
                else
                    RemoveCookies();
            }
        }
        catch
        { }
        return CurID;
    }
}
