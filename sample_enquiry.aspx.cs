using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sample_enquiry : System.Web.UI.Page
{
    MasterPage Mp = new MasterPage();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            string Body = "<table border='1' style='border-collapse: collapse;border: 1px solid black;'>";
            Body += String.Format("<tr><td>Name</td><td>{0}</td></tr><tr><td>Phone</td><td>{1}</td></tr><tr><td>Email</td><td>{2}</td></tr><tr><td>Company Name</td><td>{3}</td></tr><tr><td>Message</td><td>{4}</td></tr>", txtFirstName.Text, txtMobile.Text, txtEmail.Text,  txtCompanyName.Text, txtMessage.Text);            
            if (!string.IsNullOrEmpty(GetIpAddress()))
            {
                Body += "<tr><td>User IP Address</td><td>" + GetIpAddress() + "</td></tr>";
            }
            Body += "</table>";
            string Sub = "Online enquiry on website";
            string retst = SendMail(Body, Sub);          
            if (retst == "send")
            {
                clearform();
                Response.Write("<script language='javascript'>alert('Enquiry sent!');</script>");
                return;
            }
            else
            {
                clearform();
                Response.Write("<script language='javascript'>alert('" + retst + "');</script>");
                return;
            }
        }
        else
        {            
            Response.Write("<script language='javascript'>alert('Form data not valid');</script>");
            return;
        }
    }
    private string SendMail(string Body, string Subject)
    {
        try
        {
            string EmailHost = ConfigurationManager.AppSettings["smtphost"];
            string EmailPort = ConfigurationManager.AppSettings["smtpport"];
            string EmailUser = ConfigurationManager.AppSettings["username"];
            string EmailPassword = ConfigurationManager.AppSettings["pwd"];
            string fromEmail = ConfigurationManager.AppSettings["FromEmail"];
            string toEmail = ConfigurationManager.AppSettings["emailto"];
            SmtpClient client = new SmtpClient(EmailHost);
            MailMessage message = new MailMessage(fromEmail, toEmail);
            message.IsBodyHtml = true;
            message.Body = Body;
            message.Subject = Subject;
            client.Port = System.Convert.ToInt32(EmailPort);
            client.UseDefaultCredentials = false;
            client.Credentials = new System.Net.NetworkCredential(EmailUser, EmailPassword);
            client.EnableSsl = true;
            client.Send(message);
        }
        catch (Exception ex)
        {
            return ex.Message;
        }
        return "send";
    }
    public string GetIpAddress()
    {
        var ipAddress = string.Empty;
        try
        {
            if (Request != null && Request.ServerVariables["HTTP_X_FORWARDED_FOR"] != null)
            {
                ipAddress = Request.ServerVariables["HTTP_X_FORWARDED_FOR"];
            }
            else if (!string.IsNullOrEmpty(Request.UserHostAddress))
            {
                ipAddress = Request.UserHostAddress;
            }
        }
        catch { }
        return ipAddress;
    }
    private void clearform()
    {
        txtFirstName.Text = string.Empty;
        txtCompanyName.Text = string.Empty;
        txtEmail.Text = string.Empty;        
        txtMobile.Text = string.Empty;
        txtMessage.Text = string.Empty;       
    }
}