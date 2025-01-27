<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="sample_enquiry.aspx.cs" Inherits="sample_enquiry" %>

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
        <section class="page-title" style="background-image: url(images/pagetitle-bg.jpg)">
            <div class="auto-container">
                <h1>Sample Enquiry</h1>
                <ul class="page-breadcrumb">
                    <li><a href="index.aspx">home</a></li>
                    <li>Sample Enquiry</li>
                </ul>
            </div>
        </section>
        <!-- End Page Title -->

    <!-- Contact Page Section -->
    <div class="contact-page-section sam-enquiry">
    	<div class="auto-container">
			
			<!-- Lower Section -->
			<div class="lower-section mb-5">
				<div class="row clearfix">
					
					<!-- Content Column -->
					<div class="content-column col-lg-5 col-md-12 col-sm-12">
						<div class="inner-column">
							<!-- Sec Title -->
							<div class="sec-title">
								<div class="title">Drop Us a Message</div>
								<h2>Free Sample <span>Enquiry</span></h2>
							</div>
						</div>
						<div class="sample-img">
                            <img src="images/product/sample.jpg"  alt=""/>
						</div>
						<!-- Social Box -->
						<ul class="social-box">
							<li class="facebook"><a target="_blank" href="https://www.facebook.com/Al-Falaah-DG-Packing-Forwarding-LLP-107812598615331" class="fa fa-facebook-f"></a></li>
							<li class="linkedin"><a target="_blank" href="https://www.linkedin.com/company/86228551/admin/" class="fa fa-linkedin"></a></li>
							<li class="twitter"><a target="_blank" href="https://twitter.com/Al_FalaahDg" class="fa fa-twitter"></a></li>
							<li class="instagram"><a target="_blank" href="https://www.instagram.com/al_falaahdg/" class="fa fa-instagram"></a></li>
						</ul>
					</div>
					
					<!-- Form Column -->
					<div class="form-column col-lg-7 col-md-12 col-sm-12">
						<div class="inner-column">
							
							<!-- Contact Form -->
							<div class="contact-page-form">
								<!-- Contact Form -->
								<%--<form method="post" action="sendemail.php" id="contact-form">--%>
									<div class="row clearfix">
									
										<div class="form-group col-lg-6 col-md-6 col-sm-12">
											<span class="icon flaticon-user-2"></span>										
											<asp:TextBox ID="txtFirstName" runat="server" placeholder="Your Name"></asp:TextBox>
                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                 ErrorMessage="Please enter your name." ControlToValidate="txtFirstName" SetFocusOnError="true"
                 Font-Size="X-Small" ForeColor="Red" ValidationGroup="submit_popup" Display="Dynamic"></asp:RequiredFieldValidator>
										</div>
										
										<div class="form-group col-lg-6 col-md-6 col-sm-12 rupees">
											<span class="icon flaticon-phone-call"></span>										
											<asp:TextBox ID="txtMobile" runat="server" placeholder="Your Mobile No." MaxLength="12" onkeypress="return isNumber(event)"></asp:TextBox>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                 ErrorMessage="Please enter Mobile No." ControlToValidate="txtMobile" SetFocusOnError="true"
                 Font-Size="X-Small" ForeColor="Red" ValidationGroup="submit_popup" Display="Dynamic"></asp:RequiredFieldValidator>
										</div>
										
										<div class="form-group col-lg-6 col-md-6 col-sm-12">
											<span class="icon flaticon-big-envelope"></span>										
											<asp:TextBox ID="txtEmail" runat="server" placeholder="Your Email ID" ></asp:TextBox>
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
											<span > <i class="icon fa fa-building"></i></span>											
											<asp:TextBox ID="txtCompanyName" runat="server" placeholder="Company Name"></asp:TextBox>
                                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                 ErrorMessage="Please enter company name." ControlToValidate="txtCompanyName" SetFocusOnError="true"
                 Font-Size="X-Small" ForeColor="Red" ValidationGroup="submit_popup" Display="Dynamic"></asp:RequiredFieldValidator>
										</div>
										
										<div class="form-group col-lg-12 col-md-12 col-sm-12">
											<span > <i class="icon fa fa-location-arrow"></i></span>											
											 <asp:TextBox ID="txtMessage"  placeholder="Delivery Address" runat="server" TextMode="MultiLine"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                 ErrorMessage="Please enter Message." ControlToValidate="txtMessage" SetFocusOnError="true"
                 Font-Size="X-Small" ForeColor="Red" ValidationGroup="submit_popup" Display="Dynamic"></asp:RequiredFieldValidator>
										</div>
										
										<div class="form-group col-lg-12 col-md-12 col-sm-12">											
											<asp:Button ID="btnSubmit" runat="server" CssClass="theme-btn submit-btn" Text="Submit Now" OnClick="btnSubmit_Click"
                                        ValidationGroup="submit_popup" />			
										</div>
										
									</div>
								<%--</form>--%>
								<!-- Contact Form -->
							</div>
							
						</div>
					</div>

					
				</div>

			</div>
		</div>
	</div>
	<!-- End Contact Page Section -->

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server">
</asp:Content>

