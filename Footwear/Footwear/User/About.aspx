<%@ Page Title="About Us" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Footwear.User.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
       
        .about_section {
            background: linear-gradient(135deg, #f9f9f9 0%, #ffffff 100%);
            padding: 100px 0;
            position: relative;
            overflow: hidden;
        }
        
        .about_section:before {
            content: '';
            position: absolute;
            top: -50px;
            right: -50px;
            width: 200px;
            height: 200px;
            background: rgba(255, 193, 7, 0.1);
            border-radius: 50%;
            z-index: 0;
        }
        
        .about_section:after {
            content: '';
            position: absolute;
            bottom: -100px;
            left: -100px;
            width: 300px;
            height: 300px;
            background: rgba(33, 150, 243, 0.05);
            border-radius: 50%;
            z-index: 0;
        }
        
        .img-box {
            position: relative;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 30px 50px rgba(0, 0, 0, 0.1);
            transform: perspective(1000px) rotateY(-5deg);
            transition: all 0.5s ease;
            z-index: 1;
        }
        
        .img-box:hover {
            transform: perspective(1000px) rotateY(0deg);
            box-shadow: 0 40px 70px rgba(0, 0, 0, 0.15);
        }
        
        .img-box img {
            width: 100%;
            height: auto;
            transition: transform 0.5s ease;
        }
        
        .img-box:hover img {
            transform: scale(1.03);
        }
        
        .detail-box {
            position: relative;
            z-index: 1;
            padding-left: 30px;
        }
        
        .heading_container h2 {
            font-size: 42px;
            font-weight: 700;
            color: #333;
            margin-bottom: 25px;
            position: relative;
            display: inline-block;
        }
        
        .heading_container h2:after {
            content: '';
            position: absolute;
            left: 0;
            bottom: -10px;
            width: 70px;
            height: 4px;
            background: #FF6B6B;
            border-radius: 2px;
        }
        
        .detail-box p {
            color: #666;
            font-size: 16px;
            line-height: 1.8;
            margin-bottom: 30px;
        }
        
        .detail-box a {
            display: inline-block;
            padding: 12px 35px;
            background: linear-gradient(45deg, #FF6B6B, #FF8E53);
            color: #fff;
            border-radius: 50px;
            text-decoration: none;
            font-weight: 600;
            box-shadow: 0 5px 15px rgba(255, 107, 107, 0.3);
            transition: all 0.3s ease;
            border: none;
            position: relative;
            overflow: hidden;
        }
        
        .detail-box a:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 25px rgba(255, 107, 107, 0.4);
        }
        
        .detail-box a:before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.2), transparent);
            transition: 0.5s;
        }
        
        .detail-box a:hover:before {
            left: 100%;
        }
        
        .features {
            margin-top: 50px;
        }
        
        .feature-item {
            display: flex;
            align-items: flex-start;
            margin-bottom: 25px;
        }
        
        .feature-icon {
            font-size: 24px;
            color: #FF6B6B;
            margin-right: 15px;
            flex-shrink: 0;
        }
        
        .feature-content h4 {
            font-size: 18px;
            font-weight: 600;
            color: #333;
            margin-bottom: 5px;
        }
        
        .feature-content p {
            font-size: 14px;
            color: #777;
            margin: 0;
        }
        
        /* Responsive adjustments */
        @media (max-width: 991px) {
            .about_section {
                padding: 80px 0;
            }
            
            .detail-box {
                padding-left: 0;
                margin-top: 50px;
            }
        }
        
        @media (max-width: 767px) {
            .heading_container h2 {
                font-size: 36px;
            }
            
            .about_section {
                padding: 60px 0;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- about section -->
    <section class="about_section layout_padding">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 col-md-12">
                    <div class="img-box">
                        <img src="../assets/images/about-img.jpg" alt="Our Footwear Store" class="img-fluid">
                    </div>
                </div>
                <div class="col-lg-6 col-md-12">
                    <div class="detail-box">
                        <div class="heading_container">
                            <h2>Our Footwear Story</h2>
                        </div>
                        <p>
                            Founded in 2010, we've been dedicated to providing high-quality, comfortable, and stylish 
                            footwear for every occasion. What began as a small family business has grown into a 
                            trusted name in the footwear industry, known for our commitment to quality and customer 
                            satisfaction.
                        </p>
                        <p>
                            We carefully select each pair in our collection, focusing on durability, comfort, and 
                            the latest fashion trends. Our team of footwear experts travels the world to bring you 
                            the best styles from both established brands and emerging designers.
                        </p>
                        
                        <div class="features">
                            <div class="feature-item">
                                <div class="feature-icon">
                                    <i class="fas fa-tshirt"></i>
                                </div>
                                <div class="feature-content">
                                    <h4>Premium Materials</h4>
                                    <p>Only the finest leathers and fabrics for lasting comfort</p>
                                </div>
                            </div>
                            <div class="feature-item">
                                <div class="feature-icon">
                                    <i class="fas fa-heart"></i>
                                </div>
                                <div class="feature-content">
                                    <h4>Crafted With Care</h4>
                                    <p>Each pair is inspected to ensure perfect quality</p>
                                </div>
                            </div>
                            <div class="feature-item">
                                <div class="feature-icon">
                                    <i class="fas fa-globe"></i>
                                </div>
                                <div class="feature-content">
                                    <h4>Global Styles</h4>
                                    <p>Curated collection from international designers</p>
                                </div>
                            </div>
                        </div>
                        
                        <a href="Products.aspx">
                            Explore Our Collection
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- end about section -->

    <!-- Add Font Awesome for icons -->
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
</asp:Content>