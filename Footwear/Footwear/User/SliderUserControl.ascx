<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SliderUserControl.ascx.cs" Inherits="Footwear.User.SliderUserControl" %>

<!-- slider section -->
    <section class="slider_section ">
      <div id="customCarousel1" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="container ">
              <div class="row">
                <div class="col-md-7 col-lg-6 ">
                  <div class="detail-box">
                    <h1>
                      Premium Footwear Collection
                    </h1>
                    <p>
                        Discover our latest collection of comfortable and stylish footwear for every occasion. 
                                    Designed for quality and built to last, our shoes combine fashion with functionality.

                    </p>
                    <div class="btn-box">
                      <a href="Products.aspx" class="btn1">
                        Order Now
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item ">
            <div class="container ">
              <div class="row">
                <div class="col-md-7 col-lg-6 ">
                  <div class="detail-box">
                    <h1>
                      Summer Special Offers
                    </h1>
                    <p>
                      Get ready for summer with our exclusive discounts on sandals and lightweight footwear. 
                    </p>
                    <div class="btn-box">
                      <a href="Products.aspx" class="btn1">
                        Order Now
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="container ">
              <div class="row">
                <div class="col-md-7 col-lg-6 ">
                  <div class="detail-box">
                    <h1>
                      New Arrivals
                    </h1>
                    <p>
                      Explore our newest designs just arrived this season. From athletic performance 
                                    to casual elegance, we have the perfect pair for you.
                    </p>
                    <div class="btn-box">
                      <a href="Products.aspx" class="btn1">
                        Order Now
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="container">
          <ol class="carousel-indicators">
            <li data-target="#customCarousel1" data-slide-to="0" class="active"></li>
            <li data-target="#customCarousel1" data-slide-to="1"></li>
            <li data-target="#customCarousel1" data-slide-to="2"></li>
          </ol>
        </div>
      </div>

    </section>
    <!-- end slider section -->