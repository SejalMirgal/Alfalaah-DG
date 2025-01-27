<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Page Title -->
    <section class="page-title" style="background-image: url(images/pagetitle-bg.jpg)">
    	<div class="auto-container">
			<h1>Product</h1>
			<ul class="page-breadcrumb">
				<li><a href="index.aspx">home</a></li>
				<li>Product</li>
			</ul>
        </div>
    </section>
    <!-- End Page Title -->
	
	<!-- Shop Page Section -->
    <div class="shop-page-section product-wrap">
    	<div class="auto-container">
        	<div class="row clearfix">
				
				<!--Shop Item-->
				<div class="shop-item col-lg-4 col-md-6 col-sm-12">
					<div class="inner-box wow fadeInLeft" data-wow-delay="0ms" data-wow-duration="1500ms">
						<div class="image">
							<img src="images/product/-1.jpg" alt="UN Approved Boxes" />
							<div class="overlay-box">
								<ul class="cart-option">
									<li><a href="images/product/-1.jpg" class="lightbox-image" data-fancybox-group="shop-gallery" data-caption=""><span class="flaticon-search"></span></a></li>
									<li><a href="Unapprovedboxes.html"><span class="flaticon-eye"></span></a></li>
								</ul>
							</div>
						</div>
						<div class="lower-content">
							<h6><a href="Unapprovedboxes.html">UN Approved Boxes</a></h6>
							<div class="price">&#8377; 1400/- Onwards</div>
							<a class="cart-btn" href="enquiry.aspx" onclick="fn_AddProductURL('UN Approved Boxes')"><span class="icon flaticon-shopping-cart"></span>Enquiry</a>
						</div>
					</div>
				</div>
				
				<!--Shop Item-->
				<div class="shop-item col-lg-4 col-md-6 col-sm-12">
					<div class="inner-box wow fadeInUp" data-wow-delay="0ms" data-wow-duration="1500ms">
						<div class="image">
							<img src="images/product/UN_Certified_Box.jpg" alt="UN_Certified_Box" />
							<div class="overlay-box">
								<ul class="cart-option">
									<li><a href="images/product/UN_Certified_Box.jpg" class="lightbox-image" data-fancybox-group="shop-gallery" data-caption=""><span class="flaticon-search"></span></a></li>
									<li><a href="uncertified_fiberboardbox.html"><span class="flaticon-eye"></span></a></li>
								</ul>
							</div>
						</div>
						<div class="lower-content">
							<h6><a href="uncertified_fiberboardbox.html">UN Certified Boxes</a></h6>
							<div class="price">&#8377; 800/- Onwards</div>
							<a class="cart-btn" href="enquiry.aspx" onclick="fn_AddProductURL('UN Certified Boxes')"><span class="icon flaticon-shopping-cart"></span>Enquiry</a>
						</div>
					</div>
				</div>
				
				<!--Shop Item-->
				<div class="shop-item col-lg-4 col-md-6 col-sm-12">
					<div class="inner-box wow fadeInRight" data-wow-delay="0ms" data-wow-duration="1500ms">
						<div class="image">
							<img src="images/product/UNCertified_Box_X4.jpg" alt="UNCertified_Box_X4" />
							<div class="overlay-box">
								<ul class="cart-option">
									<li><a href="images/product/UNCertified_Box_X4.jpg" class="lightbox-image" data-fancybox-group="shop-gallery" data-caption=""><span class="flaticon-search"></span></a></li>
									<li><a href="Unapproved4gvboxes.html"><span class="flaticon-eye"></span></a></li>
								</ul>
							</div>
						</div>
						<div class="lower-content">
							<h6><a href="Unapproved4gvboxes.html">UN Approved 4GV Boxes</a></h6>
							<div class="price">&#8377; 800/- Onwards</div>
							<a class="cart-btn" href="enquiry.aspx" onclick="fn_AddProductURL('UN Approved 4GV Boxes')"><span class="icon flaticon-shopping-cart"></span>Enquiry</a>
						</div>
					</div>
				</div>

				<!--Shop Item-->
				<div class="shop-item col-lg-4 col-md-6 col-sm-12">
					<div class="inner-box wow fadeInLeft" data-wow-delay="0ms" data-wow-duration="1500ms">
						<div class="image">
							<img src="images/product/UN_Approved_Box-X55.jpg" alt="UN_Approved_Box-X55" />
							<div class="overlay-box">
								<ul class="cart-option">
									<li><a href="images/product/UN_Approved_Box-X55.jpg" class="lightbox-image" data-fancybox-group="shop-gallery" data-caption=""><span class="flaticon-search"></span></a></li>
									<li><a href="Unapproved4gboxes.html"><span class="flaticon-eye"></span></a></li>
								</ul>
							</div>
						</div>
						<div class="lower-content">
							<h6><a href="Unapproved4gboxes.html">UN Approved 4G Boxes</a></h6>
							<div class="price">&#8377; 1,500/- Onwards</div>
							<a class="cart-btn" href="enquiry.aspx" onclick="fn_AddProductURL('UN Approved 4G Boxes')"><span class="icon flaticon-shopping-cart"></span>Enquiry</a>
						</div>
					</div>
				</div>
				
				<!--Shop Item-->
				<div class="shop-item col-lg-4 col-md-6 col-sm-12">
					<div class="inner-box wow fadeInUp" data-wow-delay="0ms" data-wow-duration="1500ms">
						<div class="image">
							<img src="images/product/UN_Approved_Packaging_1.jpg" alt="UN_Approved_Packaging" />
							<div class="overlay-box">
								<ul class="cart-option">
									<li><a href="images/product/UN_Approved_Packaging_1.jpg" class="lightbox-image" data-fancybox-group="shop-gallery" data-caption=""><span class="flaticon-search"></span></a></li>
									<li><a href="un_packaging_boxes.html"><span class="flaticon-eye"></span></a></li>
								</ul>
							</div>
						</div>
						<div class="lower-content">
							<h6><a href="un_packaging_boxes.html">UN Packaging Boxes Supplier</a></h6>
							
							<a class="cart-btn" href="enquiry.aspx" onclick="fn_AddProductURL('UN Packaging Boxes Supplier')"><span class="icon flaticon-shopping-cart"></span>Enquiry</a>
						</div>
					</div>
				</div>
				
				<!--Shop Item-->
				<div class="shop-item col-lg-4 col-md-6 col-sm-12">
					<div class="inner-box wow fadeInRight" data-wow-delay="0ms" data-wow-duration="1500ms">
						<div class="image">
							<img src="images/product/wooden_box.jpg" alt="wooden_box" />
							<div class="overlay-box">
								<ul class="cart-option">
									<li><a href="images/product/wooden_box.jpg" class="lightbox-image" data-fancybox-group="shop-gallery" data-caption=""><span class="flaticon-search"></span></a></li>
									<li><a href="Unapprovedwoodenboxes.html"><span class="flaticon-eye"></span></a></li>
								</ul>
							</div>
						</div>
						<div class="lower-content">
							<h6><a href="Unapprovedwoodenboxes.html">UN / IIP Approved Wooden Box</a></h6>
							<div class="price">&#8377; 10,000/- Onwards</div>
							<a class="cart-btn" href="enquiry.aspx" onclick="fn_AddProductURL('UN / IIP Approved Wooden Box')"><span class="icon flaticon-shopping-cart"></span>Enquiry</a>
						</div>
					</div>
				</div>
				
				<!--Shop Item-->
				<div class="shop-item col-lg-4 col-md-6 col-sm-12">
					<div class="inner-box wow fadeInLeft" data-wow-delay="0ms" data-wow-duration="1500ms">
						<div class="image">
							<img src="images/product/IIP_certified-plywood_boxes.jpg" alt="IIP certified plywood boxes" />
							<div class="overlay-box">
								<ul class="cart-option">
									<li><a href="images/product/IIP_certified-plywood_boxes.jpg" class="lightbox-image" data-fancybox-group="shop-gallery" data-caption=""><span class="flaticon-search"></span></a></li>
									<li><a href="IIP_certified-plywood_boxes.html"><span class="flaticon-eye"></span></a></li>
								</ul>
							</div>
						</div>
						<div class="lower-content">
							<h6><a href="IIP_certified-plywood_boxes.html">IIP / UN Certified Plywood Boxes</a></h6>
							<div class="price">&#8377; 10,000/- Onwards</div>
							<a class="cart-btn" href="enquiry.aspx" onclick="fn_AddProductURL('IIP / UN Certified Plywood Boxes')"><span class="icon flaticon-shopping-cart"></span>Enquiry</a>
						</div>
					</div>
				</div>
				
				<!--Shop Item-->
				<div class="shop-item col-lg-4 col-md-6 col-sm-12">
					<div class="inner-box wow fadeInUp" data-wow-delay="0ms" data-wow-duration="1500ms">
						<div class="image">
							<img src="images/product/IIP_approved_packages.jpg" alt="IIP approved packages" />
							<div class="overlay-box">
								<ul class="cart-option">
									<li><a href="images/product/IIP_approved_packages.jpg" class="lightbox-image" data-fancybox-group="shop-gallery" data-caption=""><span class="flaticon-search"></span></a></li>
									<li><a href="IIP_Approved_Packages.html"><span class="flaticon-eye"></span></a></li>
								</ul>
							</div>
						</div>
						<div class="lower-content">
							<h6><a href="IIP_Approved_Packages.html">IIP Approved Packages</a></h6>
							<div class="price">&#8377; 24,500/- Onwards</div>
							<a class="cart-btn" href="enquiry.aspx" onclick="fn_AddProductURL('IIP Approved Packages')"><span class="icon flaticon-shopping-cart"></span>Enquiry</a>
						</div>
					</div>
				</div>
				
				<!--Shop Item-->
				<div class="shop-item col-lg-4 col-md-6 col-sm-12">
					<div class="inner-box wow fadeInRight" data-wow-delay="0ms" data-wow-duration="1500ms">
						<div class="image">
							<img src="images/product/UNApprovedDrum-30LOpen-Top-Drum.jpg" alt="UN Approved Drums" />
							<div class="overlay-box">
								<ul class="cart-option">
									<li><a href="images/product/UNApprovedDrum-30LOpen-Top-Drum.jpg" class="lightbox-image" data-fancybox-group="shop-gallery" data-caption=""><span class="flaticon-search"></span></a></li>
									<li><a href="uncertified_hdpe.html"><span class="flaticon-eye"></span></a></li>
								</ul>
							</div>
						</div>
						<div class="lower-content">
							<h6><a href="uncertified_hdpe.html">UN Approved HDPE Drums</a></h6>
							<div class="price">&#8377; 1100/- Onwards</div>
							<a class="cart-btn" href="enquiry.aspx" onclick="fn_AddProductURL('UN Approved HDPE Drums')"><span class="icon flaticon-shopping-cart"></span>Enquiry</a>
						</div>
					</div>
				</div>

				<!--Shop Item-->
				<div class="shop-item col-lg-4 col-md-6 col-sm-12">
					<div class="inner-box wow fadeInLeft" data-wow-delay="0ms" data-wow-duration="1500ms">
						<div class="image">
							<img src="images/product/UNApproved_Jerrican-25L_Capacity.jpg" alt="UNApproved_Jerrican-25L" />
							<div class="overlay-box">
								<ul class="cart-option">
									<li><a href="images/product/UNApproved_Jerrican-25L_Capacity.jpg" class="lightbox-image" data-fancybox-group="shop-gallery" data-caption=""><span class="flaticon-search"></span></a></li>
									<li><a href="Unapproved_HDPE.html"><span class="flaticon-eye"></span></a></li>
								</ul>
							</div>
						</div>
						<div class="lower-content">
							<h6><a href="Unapproved_HDPE.html">UN Certified HDPE Jerrican</a></h6>
							<div class="price">&#8377; 1100/- Onwards</div>
							<a class="cart-btn" href="enquiry.aspx" onclick="fn_AddProductURL('UN Certified HDPE Jerrican')"><span class="icon flaticon-shopping-cart"></span>Enquiry</a>
						</div>
					</div>
				</div>
				
				<!--Shop Item-->
				<div class="shop-item col-lg-4 col-md-6 col-sm-12">
					<div class="inner-box wow fadeInUp" data-wow-delay="0ms" data-wow-duration="1500ms">
						<div class="image">
							<img src="images/product/barrel210le1.jpg" alt="210 Litre Capacity Narrow Mouth HDPE" />
							<div class="overlay-box">
								<ul class="cart-option">
									<li><a href="images/product/barrel210le1.jpg" class="lightbox-image" data-fancybox-group="shop-gallery" data-caption=""><span class="flaticon-search"></span></a></li>
									<li><a href="UN_Approved_HDPE_Barrels_and_Drums.html"><span class="flaticon-eye"></span></a></li>
								</ul>
							</div>
						</div>
						<div class="lower-content">
							<h6><a href="UN_Approved_HDPE_Barrels_and_Drums.html">UN Approved HDPE Barrels</a></h6>
							<div class="price">&#8377; 3000/- Onwards</div>
							<a class="cart-btn" href="enquiry.aspx" onclick="fn_AddProductURL('UN Approved HDPE Barrels')"><span class="icon flaticon-shopping-cart"></span>Enquiry</a>
						</div>
					</div>
				</div>
				
				<!--Shop Item-->
				<div class="shop-item col-lg-4 col-md-6 col-sm-12">
					<div class="inner-box wow fadeInRight" data-wow-delay="0ms" data-wow-duration="1500ms">
						<div class="image">
							<img src="images/product/unapp_ms_drums.jpg" alt="unapp ms drums" />
							<div class="overlay-box">
								<ul class="cart-option">
									<li><a href="images/product/unapp_ms_drums.jpg" class="lightbox-image" data-fancybox-group="shop-gallery" data-caption=""><span class="flaticon-search"></span></a></li>
									<li><a href="unapproved_ms_drums.html"><span class="flaticon-eye"></span></a></li>
								</ul>
							</div>
						</div>
						<div class="lower-content">
							<h6><a href="unapproved_ms_drums.html">UN Approved MS Drums</a></h6>
							<div class="price">&#8377; 3500/- Onwards</div>
							<a class="cart-btn" href="enquiry.aspx" onclick="fn_AddProductURL('UN Approved MS Drums')"><span class="icon flaticon-shopping-cart"></span>Enquiry</a>
						</div>
					</div>
				</div>
				
				<!--Shop Item-->
				<div class="shop-item col-lg-4 col-md-6 col-sm-12">
					<div class="inner-box wow fadeInLeft" data-wow-delay="0ms" data-wow-duration="1500ms">
						<div class="image">
							<img src="images/product/un_certified_ms_drums.jpg" alt="un certified ms drums" />
							<div class="overlay-box">
								<ul class="cart-option">
									<li><a href="images/product/un_certified_ms_drums.jpg" class="lightbox-image" data-fancybox-group="shop-gallery" data-caption=""><span class="flaticon-search"></span></a></li>
									<li><a href="uncertifiedms_drums.html"><span class="flaticon-eye"></span></a></li>
								</ul>
							</div>
						</div>
						<div class="lower-content">
							<h6><a href="uncertifiedms_drums.html">UN Certified MS Drums</a></h6>
							<div class="price">&#8377; 1,500/-Onwards</div>
							<a class="cart-btn" href="enquiry.aspx" onclick="fn_AddProductURL('UN Certified MS Drums')"><span class="icon flaticon-shopping-cart"></span>Enquiry</a>
						</div>
					</div>
				</div>
				
				<!--Shop Item-->
				<div class="shop-item col-lg-4 col-md-6 col-sm-12">
					<div class="inner-box wow fadeInUp" data-wow-delay="0ms" data-wow-duration="1500ms">
						<div class="image">
							<img src="images/product/IIP_Certified_IBC_Tank-Plastic_Pallet.jpg" alt="IIP Certified IBC Tank-Plastic Pallet" />
							<div class="overlay-box">
								<ul class="cart-option">
									<li><a href="images/product/IIP_Certified_IBC_Tank-Plastic_Pallet.jpg" class="lightbox-image" data-fancybox-group="shop-gallery" data-caption=""><span class="flaticon-search"></span></a></li>
									<li><a href="IIP_Certified_IBC_Tank.html"><span class="flaticon-eye"></span></a></li>
								</ul>
							</div>
						</div>
						<div class="lower-content">
							<h6><a href="IIP_Certified_IBC_Tank.html">IIP Certified IBC Tank</a></h6>
							<div class="price">&#8377; 16,000/- Onwards</div>
							<a class="cart-btn" href="enquiry.aspx" onclick="fn_AddProductURL('IIP Certified IBC Tank')"><span class="icon flaticon-shopping-cart"></span>Enquiry</a>
						</div>
					</div>
				</div>
				
				<!--Shop Item-->
				<div class="shop-item col-lg-4 col-md-6 col-sm-12">
					<div class="inner-box wow fadeInRight" data-wow-delay="0ms" data-wow-duration="1500ms">
						<div class="image">
							<img src="images/product/IIP-Certified-FIBC-Bags.jpg" alt="IIP Certified FIBC Bags" />
							<div class="overlay-box">
								<ul class="cart-option">
									<li><a href="images/product/IIP-Certified-FIBC-Bags.jpg" class="lightbox-image" data-fancybox-group="shop-gallery" data-caption=""><span class="flaticon-search"></span></a></li>
									<li><a href="IIP_Certified_FIBC_Bag_Jumbo_Bag.html"><span class="flaticon-eye"></span></a></li>
								</ul>
							</div>
						</div>
						<div class="lower-content">
							<h6><a href="IIP_Certified_FIBC_Bag_Jumbo_Bag.html">IIP Certified FIBC Bag / Jumbo Bag</a></h6>
							<div class="price">&#8377; 1,700/- Onwards</div>
							<a class="cart-btn" href="enquiry.aspx" onclick="fn_AddProductURL('IIP Certified FIBC Bag / Jumbo Bag')"><span class="icon flaticon-shopping-cart"></span>Enquiry</a>
						</div>
					</div>
				</div>

			</div>
			
		</div>
	</div>
	<!-- End Shop Page Section -->
</asp:Content>

