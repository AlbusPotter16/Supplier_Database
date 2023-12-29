<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Supplier Management</title>
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" 
crossorigin="anonymous" referrerpolicy="no-referrer" />
<link href="https://fonts.googleapis.com/css2?family=Kaushan+Script&display=swap" rel="stylesheet">
<style >
*{
    margin: 0;
    padding: 0;
    font-family: 'Poppins', sans-serif;
    scroll-behavior: smooth;
}
#banner{
    background: linear-gradient(rgba(0,0,0,0.8),#009688) ;
    background-size:cover;
    height: 100vh;
}
 
.banner-text{
    text-align:center;
    color: #fff;
    padding-top: 180px;

}
.banner-text h1{
    font-size: 120px;
    font-family: 'Kaushan Script', cursive;

}
.banner-text p{
    font-size: 20px;
    font-style: italic;

}
.banner-btn{
    margin:70px auto 0;

}
.banner-btn a{
    width: 150px;
    text-decoration: none;
    display:inline-block;
    margin:0 10px;
    padding: 12px 0;
    color:#fff;
    border: 0.7px solid #fff;
    border-radius: 2px;
    position: relative;
    z-index: 1;
    transition: color 0.5s;
}
.banner-btn a span{
    
   position: absolute;
   top: 0;
   left: 0;
   font-weight: 400;
   background-color: #15efd9;
   border-radius: 8px;
   z-index: -1;
   transition: 0.6s;

}
.banner-btn a:hover span{
  width:100%;

}


  nav ul li{
    list-style: none;
    margin: 50px 20px;
  }
  nav ul li a{
    text-decoration: none;
    color:#fff;
  }
 
 
 
  /* feautes */
#feature{
    width:100%;
    padding: 70px 0;
}
.title-text{
    text-align:center;
    padding-bottom:70px;

}
.title-text p{
    margin:auto;
    font-size:20px;
    color:#009688;
    font-weight: bold;
    position: relative;
    z-index: 1;
    display: inline-block;
}
.title-text h1{
    font-size: 50px;
}
.title-text p::after{
    content:'';
    width: 50px;
    height: 35px;
    background:linear-gradient(#019587,#fff);
    position: absolute;
    top: -20px;
    left:0;
    z-index: -1;
    transform:rotate(10deg);
    border-top-left-radius:35px;
    border-bottom-right-radius:35px;


}
.feature-box{
    width:80%;
    margin: auto;
    display: flex;
    text-align: center;
    flex-wrap: wrap;
    align-items: center;
}
.features{
    flex-basis: 50%;
}
.features-img{
    flex-basis:50% ;
    margin: auto;
}
.features-img img{
    width:70%;
    border-radius: 10px;
}
.features h1{
    text-align: left;
    margin-bottom: 10px;
    font-weight: 100;
    color:#009688;


}
.features-desc{
    display: flex;
    align-items: center;
    margin-bottom: 40px;
}
.feature-icon .fa{
    width: 50px;
    height: 50px;
    font-size: 30px;
    line-height: 50px;
    border-radius: 8px;
    color: #009688;
    border:1px solid #009688;
}
.feature-text p{
    padding: 0 20px;
    text-align: initial;

}
 
 
#service{
    width: 100%;
    padding:70px 0;
    background: #efefef;

}
.service-box{
    width: 80%;
    display: flex;
    flex-wrap: wrap;
    justify-content:space-around ;
    margin: auto;
}
.single-service{
    flex-basis:48%;
    text-align: center;
    border-radius:7px;
    margin-bottom:20px;
    color:#fff;
    position: relative;

}
.single-service img{
    width: 100%;
    border-radius: 7px;
}
/* overlay is image par blue colror ataa ha */
.overlay{   
    width: 100%;
    height: 100%;
    position: absolute;
    top:0;
    border-radius: 7px;
    cursor: pointer;
    background: linear-gradient(rgba(0,0,0,0.5),#009688);
opacity: 0;
transition: 1s;


}
.single-service:hover .overlay{
   opacity: 1;
}
.service-desc{
    width: 80%;
    position: absolute;
    left: 50%;
    bottom: 40%;
    opacity: 0;
    transform: translateX(-50%);
  transition: 1s;
}
hr{
    background:#fff;
    height: 2px;
    border:0;
    margin: 15px auto;
    width: 60%;
}
.service-desc p{
    font-size:14px;
}
.single-service:hover .service-desc{
    bottom: 40%;
    opacity: 1;
}
/* mediaquery part not don yet for 4 images */
/* -------Testimonials--------- */

#testimonial{
    width: 100%;
    padding: 70px 0;
}
.testimonial-row{
    width: 80%;
    margin: auto;
    display: flex;
    justify-content: space-between;
    align-items: flex-start;
    flex-wrap: wrap;
}
.testimonial-col{
    flex-basis: 29%;
    padding: 10px;
    margin-bottom:30px ;
    border-radius: 5px;
    box-shadow: 0 10px 20px 3px #00968814;
    cursor: pointer;
    transition: transform 0.5s;
}
.testimonial-col p{
    font-size: 15px;

}
.user{
   display: flex;
   align-items: center; 
   margin:20px 0;
}
.user img{
    width: 40px;
    margin-right: 20px;
    border-radius: 3px;

}
.user-info .fa{
    margin-left: 10px;
    color:#27c0ff;
    font-size:20px;

}
.user-info small{
    color: #009688;

}
.testimonial-col:hover{
   transform: translateY(-7px)
}

/* <!-- footer Section 1:03:49 --> */

</style>
</head>
<body>
	   
	   <jsp:include page="navbar.jsp"></jsp:include>
	   	
		<div id="ad" style="position:absolute; ">
		<h1 style="font-family: 'Kaushan Script', cursive; text-align:center;color: #fff;letter-spacing:2px;margin-left:600px">Welcome , 
		<% String username = request.getParameter("username");
    			if (username != null) {
		%>
       		 <%= username %>
		<%
   			 } else {
		%>
       	 Parameter "username" is not set.
		<%
    	}
		%>

		</h1>
		</div>
		<section id="banner">
        
        <div class="banner-text">
            <h1>Supplier Management</h1>
            <p style="margin-top: 50px;font-size: 30px;"> Give A chance For Provide Service</p>
           

        </div>
    </section>
  
    <!-- Features -->
    <section id="feature">
        <div class="title-text">
           
            <h1>Why too Choose Us? </h1>
        </div>
        <div class="feature-box">
            <div class="features">
                <h1>Experienced Staff</h1>
                <div class="features-desc">
                   <div class="feature-icon">
                    <i class="fa fa-shield" aria-hidden="true"></i>                 
                  </div> 
                   <div class="feature-text">
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque consectetur perspiciatis deleniti, asperiores illo veritatis laborum minus rem fugiat doloremque sunt officia dolore impedit veniam at placeat optio necessitatibus velit?</p>
                   </div>
                </div>
                <h1>Pre Booking Online</h1>
                <div class="features-desc">
                   <div class="feature-icon">
                    <i class="fa fa-check-sqaure-o" aria-hidden="true"></i>                 
                  </div> 
                   <div class="feature-text">
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque consectetur perspiciatis deleniti, asperiores illo veritatis laborum minus rem fugiat doloremque sunt officia dolore impedit veniam at placeat optio necessitatibus velit?</p>
                   </div>
                </div>
                <h1>Affordable Cost</h1>
                <div class="features-desc">
                   <div class="feature-icon">
                    <i class="fa fa-inr" aria-hidden="true"></i>                 
                  </div> 
                   <div class="feature-text">
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Cumque consectetur perspiciatis deleniti, asperiores illo veritatis laborum minus rem fugiat doloremque sunt officia dolore impedit veniam at placeat optio necessitatibus velit?</p>
                   </div>
                </div>
            </div>
            <div class="features-img">
                <img src="./assets/undraw_Business_shop_re_ruf4.png" alt="" style="border: 3px solid #009688;height: 500px;width: 500px;">
            </div>
        </div>
    </section>
<!-- Services Section -->

  <section id="service">
    <div class="title-text">
        
        <h1>We Provide Better...</h1>
        
    </div>
    <div class="service-box">
        <div class="single-service">
            <img src="./assets/undraw_Business_deal_re_up4u.png" alt="" height="510px;">
            <div class="overlay"></div>
            <div class="service-desc">
                <h3 style="font-size: 26px;">Best Service</h3>
                <hr>
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Provident tempora eum architecto voluptates necessitatibus dolore accusantium. Incidunt vitae nihil dolor.</p>
            </div>
             </div>
        <div class="single-service">
            <img src="./assets/undraw_Businessman_re_mlee.png" alt="">
            <div class="overlay"></div>
            <div class="service-desc">
                <h3 style="font-size: 26px;">Best Business</h3>
                <hr>
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Provident tempora eum architecto voluptates necessitatibus dolore accusantium. Incidunt vitae nihil dolor.</p>
            </div>

        </div>
        <div class="single-service">
            <img src="./assets/undraw_Online_payments_re_y8f2.png" alt="" height="510px;">
            <div class="overlay"></div>
            <div class="service-desc">
                <h3 style="font-size: 26px;">Online Payment</h3>
                <hr>
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Provident tempora eum architecto voluptates necessitatibus dolore accusantium .</p>
            </div>

        </div>
        <div class="single-service"> 
            <img src="./assets/undraw_Progress_tracking_re_ulfg.png" alt="" height="510px;">
            <div class="overlay"></div>
            <div class="service-desc">
                <h3 style="font-size: 26px;">Progress Tracker</h3>
                <hr>
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Provident tempora eum architecto voluptates necessitatibus dolore accusantium..</p>
            </div>

        </div>

    </div>
  </section>
  <!-- Testimonial Section-->
 <section id="testimonial">
    <div class="title-text">
         
        <h1>What Client Says ?</h1>
    </div>
    <div class="testimonial-row">
    <div class="testimonial-col">
        <div class="user">
            <img src="./assets/img-1.jpg" alt="">
            <div class="user-info">
                <h4> KEN NORMAN <i class="fa fa-twitter" aria-hidden="true"></i></h4>
                <small>@kennorman</small>
            </div>
        </div>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Similique voluptate libero magnam incidunt dolor, quae modi explicabo repellendus. Dicta, mollitia.</p>
    </div>
    <div class="testimonial-col">
        <div class="user">
            <img src="./assets/img-2.jpg" alt="">
            <div class="user-info">
                <h4> KEN NORMAN <i class="fa fa-twitter" aria-hidden="true"></i></h4>
                <small>@kennorman</small>
            </div>
        </div>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Similique voluptate libero magnam incidunt dolor, quae modi explicabo repellendus. Dicta, mollitia.</p>
    </div>
    <div class="testimonial-col">
        <div class="user">
            <img src="./assets/img-3.jpg" alt="">
            <div class="user-info">
                <h4> KEN NORMAN <i class="fa fa-twitter" aria-hidden="true"></i></h4>
                <small>@kennorman</small>
            </div>
        </div>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Similique voluptate libero magnam incidunt dolor, quae modi explicabo repellendus. Dicta, mollitia.</p>
    </div>
</div>
 </section>
		
	  <div style="margin-top:8%;">
    <footer style="text-align: center;">
        <p>&copy; 2023 Your Company Name. All rights reserved.</p>
    </footer>
    </div>
</body>
</html>