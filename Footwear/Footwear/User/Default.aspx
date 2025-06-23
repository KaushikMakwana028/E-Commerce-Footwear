<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Footwear.User.Default" %>

<%@ Import Namespace="Footwear" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <style>
    .offer_section {
        background-color: #f8f9fa;
    }
    
    .section-title {
        font-size: 2rem;
        font-weight: 700;
        color: #212529;
        margin-bottom: 0.5rem;
    }
    
    .section-subtitle {
        color: #6c757d;
        font-size: 1.1rem;
    }
    
    .category-card {
        border-radius: 8px;
        overflow: hidden;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s ease, box-shadow 0.3s ease;
        background: white;
    }
    
    .category-card:hover {
        transform: translateY(-5px);
        box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
    }
    
    .category-img {
        overflow: hidden;
        height: 220px;
    }
    
    .category-img img {
        width: 100%;
        height: 100%;
        object-fit: cover;
        transition: transform 0.5s ease;
    }
    
    .category-card:hover .category-img img {
        transform: scale(1.05);
    }
    
    .category-body {
        padding: 1.5rem;
    }
    
    .category-title {
        font-size: 1.25rem;
        font-weight: 600;
        margin-bottom: 1rem;
        color: #212529;
    }
    
    @media (max-width: 700px) {
        .category-img {
            height: 125px;
        }
        
        .section-title {
            font-size: 1.75rem;
        }
    }

    .about_section {
        background-color: #f8f9fa;
    }
    .img-box img {
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        transition: transform 0.3s ease;
    }
    .img-box:hover img {
        transform: scale(1.02);
    }
    .detail-box h2 {
        font-size: 2rem;
        color: #333;
    }
    .detail-box p {
        line-height: 2.0;
    }

    .testimonials {
        background-color: #f8f9fa;
    }
    .testimonial-item {
        transition: transform 0.3s ease;
    }
    .testimonial-item:hover {
        transform: translateY(-5px);
    }
    .img-box img {
        border: 3px solid #fff;
        box-shadow: 0 2px 4px rgba(0,0,0,0.1);
    }
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Category section -->
<section class="offer_section py-5">
    <div class="container">
        <div class="section-header text-center mb-5">
            <h2 class="section-title">Our Categories</h2>
            <p class="section-subtitle">Explore our wide range of footwear</p>
        </div>
        
        <div class="row">
            <asp:Repeater ID="rCategory" runat="server">
                <ItemTemplate>
                    <div class="col-lg-4 col-md-6 mb-4">
                        <div class="category-card h-100">
                            <div class="category-img">
                                <a href="Products.aspx?id=<%# Eval("CategoryId") %>" aria-label='View <%# Eval("Name") %> products'>
                                    <img src="<%# Utils.GetImageUrl(Eval("ImageUrl")) %>" 
                                         alt='<%# Eval("Name") %>' 
                                         class="img-fluid" 
                                         loading="lazy">
                                </a>
                            </div>
                            <div class="category-body p-4">
                                <h3 class="category-title"><%# Eval("Name") %></h3>
                                <div class="d-flex justify-content-between align-items-center">
                                    <span class="badge bg-primary">New Arrivals</span>
                                    <a href="Products.aspx?id=<%# Eval("CategoryId") %>" class="btn btn-sm btn-outline-dark">
                                        Shop Now
                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16">
                                            <path fill-rule="evenodd" d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z"/>
                                        </svg>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
</section>
<!-- end Category section -->

    <!-- about section -->

   <section class="about_section py-5">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-md-6 mb-4 mb-md-0">
                <div class="img-box">
                    <img src="../assets/images/about-img.jpg" alt="About our company" class="img-fluid rounded">
                </div>
            </div>
            <div class="col-md-6">
                <div class="detail-box">
                    <div class="heading_container mb-3">
                        <h2 class="mb-0">About Our Footwear</h2>
                    </div>
                    <p class="mb-4" style="color:black; font-family:Verdana, Geneva, Tahoma, sans-serif"" >
                        We are passionate about providing high-quality footwear that combines comfort, style, and durability. 
                        Our team carefully selects each product to ensure it meets our high standards for craftsmanship and materials.
                    </p>
                    <p class="mb-4" style="color:black; font-family:Verdana, Geneva, Tahoma, sans-serif">
                        Founded with the vision to deliver exceptional footwear at affordable prices, we've grown to become 
                        a trusted name in the industry.
                    </p>
                    <a href="About.aspx" class="text-primary fw-bold">Learn More</a>
                </div>
            </div>
        </div>
    </div>
</section>

    <!-- end about section -->
     <!-- Features Section -->
 <section class="features-section py-5 bg-light">
     <div class="container">
         <div class="row text-center mb-5">
             <div class="col-12">
                 <h2>Why Choose Us</h2>
                 <p class="lead">We're committed to your satisfaction</p>
             </div>
         </div>
         
         <div class="row">
             <div class="col-md-4 mb-4">
                 <div class="card h-100 border-0 shadow-sm">
                     <div class="card-body text-center">
                         <div class="feature-icon mb-3">
                             <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="#e63946" viewBox="0 0 16 16">
                                 <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm3.5-7.5a.5.5 0 0 1-1 0V5.707L5.354 7.854a.5.5 0 1 1-.708-.708l3-3a.5.5 0 0 1 .708 0l3 3a.5.5 0 0 1-.708.708L8.5 5.707V8.5z"/>
                             </svg>
                         </div>
                         <h5>Fast Shipping</h5>
                         <p>Get your order delivered within 2-3 business days with our express shipping option.</p>
                     </div>
                 </div>
             </div>
             
             <div class="col-md-4 mb-4">
                 <div class="card h-100 border-0 shadow-sm">
                     <div class="card-body text-center">
                         <div class="feature-icon mb-3">
                             <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="#e63946" viewBox="0 0 16 16">
                                 <path d="M8 1a2 2 0 0 1 2 2v4H6V3a2 2 0 0 1 2-2zm3 6V3a3 3 0 0 0-6 0v4a2 2 0 0 0-2 2v5a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2z"/>
                             </svg>
                         </div>
                         <h5>Secure Payments</h5>
                         <p>Your transactions are protected with industry-standard encryption technology.</p>
                     </div>
                 </div>
             </div>
             
             <div class="col-md-4 mb-4">
                 <div class="card h-100 border-0 shadow-sm">
                     <div class="card-body text-center">
                         <div class="feature-icon mb-3">
                             <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="#e63946" viewBox="0 0 16 16">
                                 <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z"/>
                             </svg>
                         </div>
                         <h5>Quality Guarantee</h5>
                         <p>We stand behind our products with a 30-day satisfaction guarantee.</p>
                     </div>
                 </div>
             </div>
         </div>
     </div>
 </section>
    <!-- client section -->

    <section class="testimonials py-5 bg-light">
    <div class="container">
        <div class="text-center mb-5">
            <h2 class="mb-3">Customer Testimonials</h2>
            <p class="text-muted">Hear what our customers say about us</p>
        </div>
        
        <div class="row justify-content-center">
            <div class="col-lg-8">
                <div class="testimonial-carousel">
                    <div class="testimonial-item p-4 bg-white rounded shadow-sm">
                        <div class="d-flex align-items-start">
                            <div class="flex-grow-1 ms-3">
                                <p class="mb-3">
                                    "I've been extremely satisfied with the quality and comfort of the shoes I purchased. They've held up well over time and get compliments regularly."
                                </p>
                                <div class="author-info">
                                    <h6 class="mb-0">Moana Michell</h6>
                                    <small class="text-muted">Regular Customer</small>
                                </div>
                            </div>
                            <div class="img-box">
                                <img src="../assets/images/client1.jpg" alt="Moana Michell" class="rounded-circle" width="80">
                            </div>
                        </div>
                    </div>
                    
                    <div class="testimonial-item p-4 bg-white rounded shadow-sm mt-4">
                        <div class="d-flex align-items-start">
                            <div class="flex-grow-1 ms-3">
                                <p class="mb-3">
                                    "Excellent customer service and fast shipping. The shoes fit perfectly and are even more comfortable than I expected. Will definitely buy again!"
                                </p>
                                <div class="author-info">
                                    <h6 class="mb-0">Mike Hamell</h6>
                                    <small class="text-muted">Satisfied Customer</small>
                                </div>
                            </div>
                            <div class="img-box">
                                <img src="../assets/images/client2.jpg" alt="Mike Hamell" class="rounded-circle" width="80">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

    <!-- end client section -->


</asp:Content>
