<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="MasterPage.master"  CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
	<script>
        function isNumber(evt) {
            evt = (evt) ? evt : window.event;
            var charCode = (evt.which) ? evt.which : evt.keyCode;
            if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                return false;
            }
            return true;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <!-- Page Title -->
        <section class="page-title" style="background-image: url(images/pagetitle-bg.jpg) ">
            <div class="auto-container">
                <h1>Contact Us</h1>
                <ul class="page-breadcrumb">
                    <li><a href="index.aspx">Home</a></li>
                    <li>Contact Us</li>
                </ul>
            </div>
        </section>
        <!-- End Page Title -->
        <!-- Contact Page Section -->
        <div class="contact-page-section" style="background-image: url(images/background/pattern-9.png)">
            <div class="auto-container">
                <div class="row clearfix">
                    <!-- Contact Info Block -->
                    <div class="contact-info-block col-lg-3 col-md-6 col-sm-12">
                        <div class="inner-box box-chg">
                            <div class="color-layer"></div>
                            <div class="icon-box">
                                <span class="icon flaticon-phone-call"></span>
                            </div>
                            <h6>Talk to Us</h6>
                            <ul>
                                <li><span>Telephone </span><a href="tel:+912249729526"> : +91 22 4972 9526</a></li>
                                <li><span>Telephone </span><a href="tel:+912246063906"> : +91 22 4606 3906</a></li>
                                <li><span>Hand Phone </span><a href="tel:+919324476106">: +91 93244 76106</a></li>
                                <li><span>Mobile </span><a href="tel:+919930209920"> : +91 99302 09920</a></li>
                                <li><span>Mobile </span><a href="tel:+919870552381"> : +91 98705 52381</a></li>
                               
                            </ul>
                        </div>
                    </div>
                    <!-- Contact Info Block -->
                    <div class="contact-info-block col-lg-3 col-md-6 col-sm-12">
                        <div class="inner-box">
                            <div class="color-layer"></div>
                            <div class="icon-box">
                                <span class="icon flaticon-big-envelope"></span>
                            </div>
                            <h6>Email</h6>
                            <ul>
                                <li><span>Email : </span><a href="mailto:info@alfalaahdg.com">info@alfalaahdg.com</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- Contact Info Block -->
                    <div class="contact-info-block col-lg-3 col-md-6 col-sm-12">
                        <div class="inner-box">
                            <div class="color-layer"></div>
                            <div class="icon-box">
                                <span class="icon flaticon-map"></span>
                            </div>
                            <h6>Location</h6>
                            <ul>
                                <li>
                                    B-2, Mithila Apartments, Near Jankalyan Bank, J. B. Nagar, Andheri (East), Mumbai-400059, Maharashtra, INDIA.
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- Contact Info Block -->
                    <div class="contact-info-block col-lg-3 col-md-6 col-sm-12">
                        <div class="inner-box">
                            <div class="color-layer"></div>
                            <div class="icon-box">
                                <span class="icon flaticon-wall-clock"></span>
                            </div>
                            <h6>Business Hours</h6>
                            <ul>
                                <li>Monday to Friday : 10:00 am to 06:30 pm.</li>
                                <li>Saturdays : 10:00 am to 04:00 pm</li>
                                <li>2nd Saturday of the Month & Sundays Holiday.</li>
                            </ul>
                        </div>
                    </div>

                </div>
                <!-- Lower Section -->
                <div class="lower-section">
                    <div class="row clearfix">

                        <!-- Content Column -->
                        <div class="content-column col-lg-6 col-md-12 col-sm-12">
                            <div class="inner-column">
                                <!-- Sec Title -->
                                <div class="sec-title">
                                    <div class="title">DROP US A MESSAGE</div>
                                    <h2>Get In <span>Touch</span></h2>
                                </div>
                            </div>
                            <div class="text">Got an contact regarding an exciting new product? Just drop me a message and I'll get back in a jiffy. Equally, if you are just passing by and simply ...</div>
                            <!-- Social Box -->
                            <ul class="social-box">
                                <li class="facebook"><a target="_blank" href="https://www.facebook.com/Al-Falaah-DG-Packing-Forwarding-LLP-107812598615331" class="fa fa-facebook-f"></a></li>
                                <li class="linkedin"><a target="_blank" href="https://www.linkedin.com/company/86228551/admin/" class="fa fa-linkedin"></a></li>
                                <li class="twitter"><a target="_blank" href="https://twitter.com/Al_FalaahDg" class="fa fa-twitter"></a></li>
                                <li class="instagram"><a target="_blank" href="https://www.instagram.com/al_falaahdg/" class="fa fa-instagram"></a></li>
                            </ul>
                        </div>

                        <!-- Form Column -->
                        <div class="form-column col-lg-6 col-md-12 col-sm-12">
                            <div class="inner-column">

                                <!-- Contact Form -->
                                <div class="contact-page-form">
                                    <!-- Contact Form -->
                                    
                                        <div class="row clearfix">
                                            <div class="form-group col-lg-6 col-md-6 col-sm-12">
                                                <span class="icon flaticon-user-2"></span>
                                                <asp:TextBox ID="txtFirstName" runat="server" placeholder="Your Name"></asp:TextBox>
                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                 ErrorMessage="Please enter your name." ControlToValidate="txtFirstName" SetFocusOnError="true"
                 Font-Size="X-Small" ForeColor="Red" ValidationGroup="submit_popup" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </div>

                                            <div class="form-group col-lg-6 col-md-6 col-sm-12">
                                                <span class="icon flaticon-phone-call"></span>
                                                <asp:TextBox ID="txtMobile" runat="server" placeholder="Your Phone No." MaxLength="12" onkeypress="return isNumber(event)"></asp:TextBox>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                 ErrorMessage="Please enter Mobile No." ControlToValidate="txtMobile" SetFocusOnError="true"
                 Font-Size="X-Small" ForeColor="Red" ValidationGroup="submit_popup" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </div>

                                            <div class="form-group col-lg-6 col-md-6 col-sm-12">
                                                <span class="icon flaticon-big-envelope"></span>
                                                <asp:TextBox ID="txtEmail" runat="server" placeholder="Your Email" ></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                        ErrorMessage="Please enter your email." ControlToValidate="txtEmail" SetFocusOnError="true"
                                        Font-Size="X-Small" ForeColor="Red" ValidationGroup="submit_popup" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="reqtxtemail12" runat="server"
                                        ControlToValidate="txtEmail" ErrorMessage="Please enter valid email_id." SetFocusOnError="true"
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"
                                        ValidationGroup="submit_popup" Font-Size="X-Small" Display="Dynamic">
                                    </asp:RegularExpressionValidator>
                                            </div>

                                            <div class="form-group col-lg-6 col-md-6 col-sm-12">
                                                <asp:DropDownList ID="ddlnature" runat="server" CssClass="form-select">
												<asp:ListItem Value="NA">Select nature of good</asp:ListItem>
												<asp:ListItem Value="Dangerous Goods">Dangerous Goods</asp:ListItem>
												<asp:ListItem Value="General Cargo">General Cargo</asp:ListItem>
                                             </asp:DropDownList>
                                           <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please select Nature." ControlToValidate="ddlnature" SetFocusOnError="true" InitialValue="NA" Font-Size="X-Small" ForeColor="Red" ValidationGroup="submit_popup" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </div>
                                            <div class="form-group col-lg-12 col-md-12 col-sm-12 rupees">
												<asp:ScriptManager runat="server" ID="ScriptManager1" EnablePartialRendering="true" />
                                <asp:UpdatePanel ID="updatepnl" runat="server">
                                    <ContentTemplate>
                                        
										<asp:TextBox ID="txtCaptcha" runat="server" placeholder="Captcha"></asp:TextBox>
										<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
                 ErrorMessage="Please enter your Captch." ControlToValidate="txtCaptcha" SetFocusOnError="true"
                 Font-Size="X-Small" ForeColor="Red" ValidationGroup="submit_popup" Display="Dynamic"></asp:RequiredFieldValidator>
										<span class="icon">										
                                            <asp:Image ID="imgCaptcha" runat="server" Width="100px" Height="30px" Style="margin-bottom: 5px !important" />
											 <asp:ImageButton runat="server" ImageAlign="AbsMiddle" OnClick="btnRefreshCaptcha_Click" Height="15px" Width="15px" ImageUrl="~/images/refresh-icon.png"></asp:ImageButton>
											</span>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
											</div>	
                                            <div class="form-group col-lg-12 col-md-12 col-sm-12">
                                                <span class="icon flaticon-big-envelope"></span>
                                                 <asp:TextBox ID="txtMessage"  placeholder="Your Message" runat="server" TextMode="MultiLine"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                 ErrorMessage="Please enter Message." ControlToValidate="txtMessage" SetFocusOnError="true"
                 Font-Size="X-Small" ForeColor="Red" ValidationGroup="submit_popup" Display="Dynamic"></asp:RequiredFieldValidator>
                                            </div>

                                            <div class="form-group col-lg-12 col-md-12 col-sm-12">
                                                <asp:Button ID="btnSubmit" runat="server" CssClass="theme-btn submit-btn" Text="Submit Now" OnClick="btnSubmit_Click"
                                        ValidationGroup="submit_popup" />
                                                <%--<button class="theme-btn submit-btn" type="submit" name="submit-form" runat="server" onserverclick="btnSubmit_Click">Submit Now <span class="arrow flaticon-right-arrow-1" ValidationGroup="submit_popup"></span></button>	--%>
                                            </div>
                                        </div>
                                   
                                    <!-- Contact Form -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Contact Page Section -->
        <!-- Newsletter Section -->
        <div class="newsletter-section">
            <div class="map-wrap">
                <!-- Map Outer -->
                <div class="map-outer-n">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3770.0015940937865!2d72.867396!3d19.107585999999998!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7c8443fffffff%3A0xbb8f7f0a9e3abb9b!2sAL+Falaah+DG+Packing+%26+Forwarding+LLP!5e0!3m2!1sen!2sin!4v1426500315056" height="450" style="border:0;width:100%"></iframe>
                </div>
            </div>
        </div>
        <!-- End Newsletter Section -->
</asp:Content>
