<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="enquiry.aspx.cs" Inherits="enquiry" %>

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
			<h1>Enquiry</h1>
			<ul class="page-breadcrumb">
				<li><a href="index.aspx">Home</a></li>
				<li>Enquiry</li>
			</ul>
        </div>
    </section>
    <!-- End Page Title -->

    <!-- Contact Page Section -->
    <div class="contact-page-section" style="background-image: url(images/background/pattern-9.png)">
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
								<h2>Get In <span>Touch</span></h2>
							</div>
						</div>
						<div class="text">Got an enquiry regarding an exciting new product? Just drop me a message and I'll get back in a jiffy. Equally, if you are just passing by and simply ...</div>
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
								<div id="contact-form">
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
										<div class="form-group col-lg-6 col-md-6 col-sm-12 rupees">
											<span class="icon flaticon-rupees">&#8377;</span>											
											<asp:TextBox ID="txtPrice" runat="server" placeholder="Ask Your Price" onkeypress="return isNumber(event)"></asp:TextBox>
                                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                 ErrorMessage="Please enter Price" ControlToValidate="txtPrice" SetFocusOnError="true"
                 Font-Size="X-Small" ForeColor="Red" ValidationGroup="submit_popup" Display="Dynamic"></asp:RequiredFieldValidator>
										</div>
											<div class="form-group col-lg-6 col-md-6 col-sm-12 rupees">
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
										<div class="form-group col-lg-6 col-md-6 col-sm-12">
                                            <asp:DropDownList ID="ddlnature" runat="server" CssClass="form-select">
												<asp:ListItem Value="NA">Select nature of good</asp:ListItem>
												<asp:ListItem Value="Dangerous Goods">Dangerous Goods</asp:ListItem>
												<asp:ListItem Value="General Cargo">General Cargo</asp:ListItem>
                                             </asp:DropDownList>
                                           <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please select Nature." ControlToValidate="ddlnature" SetFocusOnError="true" InitialValue="NA" Font-Size="X-Small" ForeColor="Red" ValidationGroup="submit_popup" Display="Dynamic"></asp:RequiredFieldValidator>
										</div>
										
										<div class="form-group col-lg-12 col-md-12 col-sm-12">
											<span class="icon flaticon-big-envelope"></span>											
											 <asp:TextBox ID="txtMessage"  placeholder="Your Message" runat="server" TextMode="MultiLine"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                 ErrorMessage="Please enter Message." ControlToValidate="txtMessage" SetFocusOnError="true"
                 Font-Size="X-Small" ForeColor="Red" ValidationGroup="submit_popup" Display="Dynamic"></asp:RequiredFieldValidator>
										</div>
										
										<div class="form-group col-lg-12 col-md-12 col-sm-12">
											<asp:HiddenField ID="hdproduct" runat="server" />
											<asp:HiddenField ID="hdURL" runat="server" />
											<asp:HiddenField ID="hdQty" runat="server" />
											<asp:Button ID="btnSubmit" runat="server" CssClass="theme-btn submit-btn" Text="Submit Now" OnClick="btnSubmit_Click"
                                        ValidationGroup="submit_popup" />																					
										</div>
										
									</div>
								</div>
								<!-- Contact Form -->
							</div>							
						</div>
					</div>					
				</div>
			</div>
			<div class="contact-table">
				<h2>For Direct Assistance Related To The Services, Please Feel Free To Reach Us On Below Contacts:</h2>
						<div class="table-d">
							<div id="no-more-tables">
								<table class="table-bordered table-striped table-condensed cf">
        							<thead class="cf">
        								<tr>
        									<th>Service:</th>
        									<th>Contact Person</th>
        									<th>Contact Number</th>
        								</tr>
        							</thead>
        							<tbody>
        								<tr>
        									<td data-title="Service:">IIP/UN Certification & DGR Packaging</td>
        									<td data-title="Contact Person">Mr. Ajay Payer</td>
        									<td data-title="Contact Number">+91 7506501803</td>
        								</tr>
        			                    <tr>
        									<td data-title="Service:">Freight queries (Air & Sea)</td>
        									<td data-title="Contact Person">Mr. Sufiyan Munshi</td>
        									<td data-title="Contact Number">+91 7506501802</td>
        								</tr>
										<tr>
        									<td data-title="Service:">DGR Consultation & Operations</td>
        									<td data-title="Contact Person">Mr. Asif Khan</td>
        									<td data-title="Contact Number">+91 9870552381</td>
        								</tr>
										<tr>
        									<td data-title="Service:">Sales & Pricing</td>
        									<td data-title="Contact Person">Mr. Mazhar Ali Khan</td>
        									<td data-title="Contact Number">+91 9930209920</td>
        								</tr>
        							</tbody>
        						</table>
							</div>
						</div>
					</div>
		</div>
	</div>
	<!-- End Contact Page Section -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" Runat="Server">
	<script>
        $(document).ready(function () {
            if (!isNullOrEmpty(localStorage.getItem('productName'))) {
                $("#<%=hdproduct.ClientID %>").val(localStorage.getItem('productName'));
			}
            if (!isNullOrEmpty(localStorage.getItem('URL'))) {
                $("#<%=hdURL.ClientID %>").val(localStorage.getItem('URL'));
			}
            if (!isNullOrEmpty(localStorage.getItem('QTY'))) {
                $("#<%=hdQty.ClientID %>").val(localStorage.getItem('QTY'));
            }
            localStorage.clear();
        });
    </script>
	</asp:Content>
