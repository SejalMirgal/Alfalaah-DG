using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net.Mail;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class enquiry : System.Web.UI.Page
{
    MasterPage Mp = new MasterPage();
    List<string> badword = new List<string>() { "2g1c",
"2 girls 1 cup",
"acrotomophilia",
"alabama hot pocket",
"alaskan pipeline",
"anal",
"anilingus",
"anus",
"apeshit",
"arsehole",
"ass",
"asshole",
"assmunch",
"auto erotic",
"autoerotic",
"babeland",
"baby batter",
"baby juice",
"ball gag",
"ball gravy",
"ball kicking",
"ball licking",
"ball sack",
"ball sucking",
"bangbros",
"bangbus",
"bareback",
"barely legal",
"barenaked",
"bastard",
"bastardo",
"bastinado",
"bbw",
"bdsm",
"beaner",
"beaners",
"beaver cleaver",
"beaver lips",
"beastiality",
"bestiality",
"big black",
"big breasts",
"big knockers",
"big tits",
"bimbos",
"birdlock",
"bitch",
"bitches",
"black cock",
"blonde action",
"blonde on blonde action",
"blowjob",
"blow job",
"blow your load",
"blue waffle",
"blumpkin",
"bollocks",
"bondage",
"boner",
"boob",
"boobs",
"booty call",
"brown showers",
"brunette action",
"bukkake",
"bulldyke",
"bullet vibe",
"bullshit",
"bung hole",
"bunghole",
"busty",
"butt",
"buttcheeks",
"butthole",
"camel toe",
"camgirl",
"camslut",
"camwhore",
"carpet muncher",
"carpetmuncher",
"chocolate rosebuds",
"cialis",
"circlejerk",
"cleveland steamer",
"clit",
"clitoris",
"clover clamps",
"clusterfuck",
"cock",
"cocks",
"coprolagnia",
"coprophilia",
"cornhole",
"coon",
"coons",
"creampie",
"cum",
"cumming",
"cumshot",
"cumshots",
"cunnilingus",
"cunt",
"darkie",
"date rape",
"daterape",
"deep throat",
"deepthroat",
"dendrophilia",
"dick",
"dildo",
"dingleberry",
"dingleberries",
"dirty pillows",
"dirty sanchez",
"doggie style",
"doggiestyle",
"doggy style",
"doggystyle",
"dog style",
"dolcett",
"domination",
"dominatrix",
"dommes",
"donkey punch",
"double dong",
"double penetration",
"dp action",
"dry hump",
"dvda",
"eat my ass",
"ecchi",
"ejaculation",
"erotic",
"erotism",
"escort",
"eunuch",
"fag",
"faggot",
"fecal",
"felch",
"fellatio",
"feltch",
"female squirting",
"femdom",
"figging",
"fingerbang",
"fingering",
"fisting",
"foot fetish",
"footjob",
"frotting",
"fuck",
"fuck buttons",
"fuckin",
"fucking",
"fucktards",
"fudge packer",
"fudgepacker",
"futanari",
"gangbang",
"gang bang",
"gay sex",
"genitals",
"giant cock",
"girl on",
"girl on top",
"girls gone wild",
"goatcx",
"goatse",
"god damn",
"gokkun",
"golden shower",
"goodpoop",
"goo girl",
"goregasm",
"grope",
"group sex",
"g-spot",
"guro",
"hand job",
"handjob",
"hard core",
"hardcore",
"hentai",
"homoerotic",
"honkey",
"hooker",
"horny",
"hot carl",
"hot chick",
"how to kill",
"how to murder",
"huge fat",
"humping",
"incest",
"intercourse",
"jack off",
"jail bait",
"jailbait",
"jelly donut",
"jerk off",
"jigaboo",
"jiggaboo",
"jiggerboo",
"jizz",
"juggs",
"kike",
"kinbaku",
"kinkster",
"kinky",
"knobbing",
"leather restraint",
"leather straight jacket",
"lemon party",
"livesex",
"lolita",
"lovemaking",
"make me come",
"male squirting",
"masturbate",
"masturbating",
"masturbation",
"menage a trois",
"milf",
"missionary position",
"mong",
"motherfucker",
"mound of venus",
"mr hands",
"muff diver",
"muffdiving",
"nambla",
"nawashi",
"negro",
"neonazi",
"nigga",
"nigger",
"nig nog",
"nimphomania",
"nipple",
"nipples",
"nsfw",
"nsfw images",
"nude",
"nudity",
"nutten",
"nympho",
"nymphomania",
"octopussy",
"omorashi",
"one cup two girls",
"one guy one jar",
"orgasm",
"orgy",
"paedophile",
"paki",
"panties",
"panty",
"pedobear",
"pedophile",
"pegging",
"penis",
"phone sex",
"piece of shit",
"pikey",
"pissing",
"piss pig",
"pisspig",
"playboy",
"pleasure chest",
"pole smoker",
"ponyplay",
"poof",
"poon",
"poontang",
"punany",
"poop chute",
"poopchute",
"porn",
"porno",
"pornography",
"prince albert piercing",
"pthc",
"pubes",
"pussy",
"queaf",
"queef",
"quim",
"raghead",
"raging boner",
"rape",
"raping",
"rapist",
"rectum",
"reverse cowgirl",
"rimjob",
"rimming",
"rosy palm",
"rosy palm and her 5 sisters",
"rusty trombone",
"sadism",
"santorum",
"scat",
"schlong",
"scissoring",
"semen",
"sex",
"sexcam",
"sexo",
"sexy",
"sexual",
"sexually",
"sexuality",
"shaved beaver",
"shaved pussy",
"shemale",
"shibari",
"shit",
"shitblimp",
"shitty",
"shota",
"shrimping",
"skeet",
"slanteye",
"slut",
"s&m",
"smut",
"snatch",
"snowballing",
"sodomize",
"sodomy",
"spastic",
"spic",
"splooge",
"splooge moose",
"spooge",
"spread legs",
"spunk",
"strap on",
"strapon",
"strappado",
"strip club",
"style doggy",
"suck",
"sucks",
"suicide girls",
"sultry women",
"swastika",
"swinger",
"tainted love",
"taste my",
"tea bagging",
"threesome",
"throating",
"thumbzilla",
"tied up",
"tight white",
"tit",
"tits",
"titties",
"titty",
"tongue in a",
"topless",
"tosser",
"towelhead",
"tranny",
"tribadism",
"tub girl",
"tubgirl",
"tushy",
"twat",
"twink",
"twinkie",
"two girls one cup",
"undressing",
"upskirt",
"urethra play",
"urophilia",
"vagina",
"venus mound",
"viagra",
"vibrator",
"violet wand",
"vorarephilia",
"voyeur",
"voyeurweb",
"voyuer",
"vulva",
"wank",
"wetback",
"wet dream",
"white power",
"whore",
"worldsex",
"wrapping men",
"wrinkled starfish",
"xx",
"xxx",
"yaoi",
"yellow showers",
"yiffy",
"zoophilia"};

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            CreateLoginCaptcha(6);
        }

    }

    protected bool FilterWord(string word)
    {
        string[] wr = word.Split(' ');
        bool retval = false;
        foreach (var item in wr)
        {
            if (badword.Contains(item.ToLower()))
            {
                retval = true;
                break;
            }
        }
        return retval;
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            if (Session["captcha"] != null && Session["captcha"].ToString() == txtCaptcha.Text)
            {
                if (!FilterWord(txtMessage.Text))
                {
                    if (Mp.GetCount_Contact() > 1)
                    {
                        clearform();
                        Response.Write("<script language='javascript'>alert('Sorry!! Your Maximum Enquiry attempts are completed');</script>");
                        return;
                    }
                    else
                    {
                        HttpCookie mdsessionCokiesObj = HttpContext.Current.Request.Cookies["Alfalaah"];
                        if (mdsessionCokiesObj != null)
                        {
                            mdsessionCokiesObj["CurID"] = Convert.ToString(Convert.ToInt32(mdsessionCokiesObj["CurID"]) + 1);
                            Response.Cookies.Add(mdsessionCokiesObj);
                        }
                        else
                        {
                            Mp.SetContactCookies(1);
                        }
                        string Body = "<table border='1' style='border-collapse: collapse;border: 1px solid black;'>";
                        Body += String.Format("<tr><td>Name</td><td>{0}</td></tr><tr><td>Phone</td><td>{1}</td></tr><tr><td>Ask Price</td><td>{2}</td></tr><tr><td>Email</td><td>{3}</td></tr><tr><td>Nature</td><td>{4}</td></tr><tr><td>Message</td><td>{5}</td></tr>", txtFirstName.Text, txtMobile.Text, txtPrice.Text, txtEmail.Text, ddlnature.SelectedValue, txtMessage.Text);
                        if (!string.IsNullOrEmpty(hdproduct.Value))
                        {
                            Body += "<tr><td>Product Name</td><td>" + hdproduct.Value + "</td></tr>";
                        }
                        if (!string.IsNullOrEmpty(hdQty.Value))
                        {
                            Body += "<tr><td>Qty.</td><td>" + hdQty.Value + "</td></tr>";
                        }
                        if (!string.IsNullOrEmpty(hdURL.Value))
                        {
                            Body += "<tr><td>URL</td><td>" + hdURL.Value + "</td></tr>";
                        }
                        if (!string.IsNullOrEmpty(GetIpAddress()))
                        {
                            Body += "<tr><td>User IP Address</td><td>" + GetIpAddress() + "</td></tr>";
                        }
                        Body += "</table>";
                        string Sub = "Online enquiry on website";
                        string retst = SendMail(Body, Sub);
                        CreateLoginCaptcha(6);
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
                }
                else
                {
                    CreateLoginCaptcha(6);
                    Response.Write("<script language='javascript'>alert('You have entered some restricted words');</script>");
                    return;
                }
            }
            else
            {
                CreateLoginCaptcha(6);
                Response.Write("<script language='javascript'>alert('Wrong Captch');</script>");
                return;
            }
        }
        else
        {
            CreateLoginCaptcha(6);
            Response.Write("<script language='javascript'>alert('Form data not valid');</script>");
            return;
        }
    }
    private void clearform()
    {
        txtFirstName.Text = string.Empty;
        txtPrice.Text = string.Empty;
        txtEmail.Text = string.Empty;
        ddlnature.SelectedIndex = -1;
        txtMobile.Text = string.Empty;
        txtMessage.Text = string.Empty;
        hdproduct.Value = string.Empty;
        hdURL.Value = string.Empty;
        hdQty.Value = string.Empty;
        txtCaptcha.Text = string.Empty;
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

    protected void btnRefreshCaptcha_Click(object sender, ImageClickEventArgs e)
    {
        CreateLoginCaptcha(6);
    }
    public void CreateLoginCaptcha(int length)
    {

        string guidResult = System.Guid.NewGuid().ToString();
        string[] options = new string[] { "-", "1", "0", "5", "9", "g", "l", "o", "D", "I", "O" };
        foreach (string o in options)
        {
            guidResult = guidResult.Replace(o, "A");
        }
        guidResult = guidResult.Substring(0, length);
        Session["captcha"] = guidResult;
        imgCaptcha.ImageUrl = "~/CaptchaHandler.ashx?txt=" + guidResult;
    }
}