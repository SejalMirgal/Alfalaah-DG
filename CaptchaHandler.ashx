<%@ WebHandler Language="C#" Class="CaptchaHandler" %>

using System;
using System.Drawing;
using System.Drawing.Text;
using System.Web;

public class CaptchaHandler : IHttpHandler
{

    public void ProcessRequest(HttpContext context)
    {
        string captchacode = context.Request.QueryString.Get("txt");
        context.Response.ContentType = "image/gif";
        CreateImage(captchacode).Save(context.Response.OutputStream, System.Drawing.Imaging.ImageFormat.Gif);
    }
    public string CreateRandomString(int length)
    {
        string guidResult = System.Guid.NewGuid().ToString();
        guidResult = guidResult.Replace("-", string.Empty);
        guidResult = guidResult.Substring(0, length);
        return guidResult;

    }
    private static Bitmap CreateImage(string sImageText)
    {

        Bitmap bmpImage = new Bitmap(1, 1);

        int iWidth = 0;
        int iHeight = 0;

        Font MyFont = new Font("Sans Serif", 20, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Pixel);
        Graphics MyGraphics = Graphics.FromImage(bmpImage);
        iWidth = Convert.ToInt32(MyGraphics.MeasureString(sImageText, MyFont).Width) + 10;       
        iHeight = Convert.ToInt32(MyGraphics.MeasureString(sImageText, MyFont).Height) + 15;
        bmpImage = new Bitmap(bmpImage, new Size(iWidth, iHeight));
        MyGraphics = Graphics.FromImage(bmpImage);
        MyGraphics.Clear(Color.Black);
        MyGraphics.TextRenderingHint = TextRenderingHint.SystemDefault;
        MyGraphics.DrawString(sImageText, MyFont, new SolidBrush(Color.White), 5, 5);
        MyGraphics.Flush();
        return (bmpImage);
    }
    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}