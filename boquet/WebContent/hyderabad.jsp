<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
/* fonts  */
@import url('https://fonts.googleapis.com/css?family=Abel|Aguafina+Script|Artifika|Athiti|Condiment|Dosis|Droid+Serif|Farsan|Gurajada|Josefin+Sans|Lato|Lora|Merriweather|Noto+Serif|Open+Sans+Condensed:300|Playfair+Display|Rasa|Sahitya|Share+Tech|Text+Me+One|Titillium+Web');

body {
background: #DFC2F2;
	background-image: linear-gradient( 135deg, #CE9FFC 10%, #7367F0 100%);
	background-attachment: fixed;	
	background-size: cover;
	}

#container{
	box-shadow: 0 15px 30px 1px rgba(128, 128, 128, 0.31);
	background: rgba(255, 255, 255, 0.90);
	text-align: center;
	border-radius: 5px;
	overflow: hidden;
	margin: 5em auto;
	height: 350px;
	width: 700px;
	
}



/* 	Product details  */
.product-details {
	position: relative;
	text-align: left;
	overflow: hidden;
	padding: 30px;
	height: 100%;
	float: left;
	width: 40%;

}

/* 	Product Name */
#container .product-details h1{
	font-family: 'Old Standard TT', serif;
	display: inline-block;
	position: relative;
	font-size: 34px;
	color: #344055;
	margin: 0;
	
}

#container .product-details h1:before{
	position: absolute;
	content: '';
	right: 0%; 
	top: 0%;
	transform: translate(25px, -15px);
	font-family: 'Farsan', cursive;
	display: inline-block;
	background: #FFA69E;
	border-radius: 5px;
	font-size: 14px;
	padding: 5px;
	color: #FFF;
	margin: 0;
	animation: chan-sh 6s ease infinite;

}


@keyframes chan-sh {
	from  {content: 'free shipping';}
	to  {content: 'New';}
	
}

/*Product Rating  */
.hint-star {
	display: inline-block;
	margin-left: 0.5em;
	color: gold;
	width: 50%;
}


/* The most important information about the product */
#container .product-details > p {
	font-family: 'Farsan', cursive;
	text-align: center;
	font-size: 20px;
	color: #7d7d7d;
	
}

/* control */

.control{
	position: absolute;
	bottom: 20%;
	left: 22.8%;
	
}
/* the Button */
.btn {
	transform: translateY(0px);
	transition: 0.3s linear;
	background: #49C608;
	border-radius: 5px;
  position: relative;
  overflow: hidden;
	cursor: pointer;
	outline: none;
	border: none;
	color: #eee;
	padding: 0;
	margin: 0;
	
}

.btn:hover{transform: translateY(-4px);}

.btn span {
	font-family: 'Farsan', cursive;
	transition: transform 0.3s;
	display: inline-block;
  padding: 10px 20px;
	font-size: 1.2em;
	margin:0;
	
}
/* shopping cart icon */
.btn .price, .shopping-cart{
	background: #333;
	border: 0;
	margin: 0;
}

.btn .price {
	transform: translateX(-10%); padding-right: 15px;
}

/* the Icon */
.btn .shopping-cart {
	transform: translateX(-100%);
  position: absolute;
	background: #333;
	z-index: 1;
  left: 0;
  top: 0;
}

/* buy */
.btn .buy {z-index: 3; font-weight: bolder;}

.btn:hover .price {transform: translateX(-110%);}

.btn:hover .shopping-cart {transform: translateX(0%);}



/* product image  */
.product-image {
	transition: all 0.3s ease-out;
	display: inline-block;
	position: relative;
	overflow: hidden;
	height: 100%;
	float: right;
	width: 50%;
	display: inline-block;
}

#container img {width: 100%;height: 100%;}

.info {
    background: rgba(27, 26, 26, 0.9);
    font-family: 'Farsan', cursive;
    transition: all 0.3s ease-out;
    transform: translateX(-100%);
    position: absolute;
    line-height: 1.9;
    text-align: left;
    font-size: 120%;
    cursor: no-drop;
    color: #FFF;
    height: 100%;
    width: 100%;
    left: 0;
    top: 0;
}

.info h2 {text-align: center}
.product-image:hover .info{transform: translateX(0);}

.info ul li{transition: 0.3s ease;}
.info ul li:hover{transform: translateX(50px) scale(1.3);}

.product-image:hover img {transition: all 0.3s ease-out;}
.product-image:hover img {transform: scale(1.2, 1.2);}
</style>
<body>
<h1 style="text-align:center;text-transform:uppercase;color:rgb(212, 18, 203)">text formatting</h1>
<div id="container">	
	
<!-- Start	Product details -->
	<div class="product-details">
		
		<!-- 	Product Name -->
	<h1>Lush Peony Bouquet</h1>
<!-- 		<span class="hint new">New</span> -->
<!-- 		<span class="hint free-shipping">Free Shipping</span> -->
<!-- 		the Product rating -->
	<span class="hint-star star">
		<i class="fa fa-star" aria-hidden="true"></i>
		<i class="fa fa-star" aria-hidden="true"></i>
		<i class="fa fa-star" aria-hidden="true"></i>
		<i class="fa fa-star-half-o" aria-hidden="true"></i>
		<i class="fa fa-star-o" aria-hidden="true"></i>
	</span>
		
	
<!-- The most important information about the product -->
		<p class="information">" The famous Cleopatra of Egypt was believed to have covered the floor of her palace room with roses before Mark Antony visited her."</p>

		
		
<!-- 		Control -->
<div class="control">
	
<!-- Start Button buying -->
	<button class="btn">
<!-- 		the Price -->
	 <span class="price">1490/-</span>
<!-- 		shopping cart icon-->
   <span class="shopping-cart"><i class="fa fa-shopping-cart" aria-hidden="true"></i></span>
<!-- 		Buy Now / ADD to Cart-->
   <span class="buy">Buy Now</span>
 </button>
	<!-- End Button buying -->
	
</div>
			
</div>
	
<!-- 	End	Product details   -->
	
	
	
<!-- 	Start product image & Information -->
	
<div class="product-image">
	
	<img src="https://www.belflora.com.au/images/products/large/l33j8h9ouo.jpg">
	
<!-- 	product Information-->
<div class="info">
	<h2>The Description</h2>
	<ul>
		<li><strong>Sun Needs: </strong>Full Sun</li>
		<li><strong>Soil Needs: </strong>Damp</li>
		<li><strong>Zones: </strong>9 - 11</li>
		<li><strong>Height: </strong>2 - 3 feet</li>
		<li><strong>Blooms in: </strong>MiddleSummer - MiddleFall</li>
		<li><strong>Features: </strong>Tolerates heat</li>
	</ul>
</div>
</div>
<!--  End product image  -->


</div>

<div id="container">	
	
<!-- Start	Product details -->
	<div class="product-details">
		
		<!-- 	Product Name -->
	<h1>Bouquet Basket</h1>
<!-- 		<span class="hint new">New</span> -->
<!-- 		<span class="hint free-shipping">Free Shipping</span> -->
<!-- 		the Product rating -->
	<span class="hint-star star">
		<i class="fa fa-star" aria-hidden="true"></i>
		<i class="fa fa-star" aria-hidden="true"></i>
		<i class="fa fa-star" aria-hidden="true"></i>
		<i class="fa fa-star-half-o" aria-hidden="true"></i>
		<i class="fa fa-star-o" aria-hidden="true"></i>
	</span>
		
	
<!-- The most important information about the product -->
		<p class="information">"Cascading down from the heavens of Pink Roses only made for the celestial beings is the Pink Roses in tissue wrapping with Ribbon leaving you mesmerised with its softness & calmness. Ideal for gifting to convey grace."</p>

		
		
<!-- 		Control -->
<div class="control">
	
<!-- Start Button buying -->
	<button class="btn">
<!-- 		the Price -->
	 <span class="price">3200/-</span>
<!-- 		shopping cart icon-->
   <span class="shopping-cart"><i class="fa fa-shopping-cart" aria-hidden="true"></i></span>
<!-- 		Buy Now / ADD to Cart-->
   <span class="buy">Buy Now</span>
 </button>
	<!-- End Button buying -->
	
</div>
			
</div>
	
<!-- 	End	Product details   -->
	
	
	
<!-- 	Start product image & Information -->
	
<div class="product-image">
	
	<img src="https://hvcreations.in/wp-content/uploads/2017/12/Beautiful-Bouquet.jpg">
	
<!-- 	product Information-->
<div class="info">
	<h2>The Description</h2>
	<ul>
		<li><strong>Sun Needs: </strong>Full Sun</li>
		<li><strong>Soil Needs: </strong>Damp</li>
		<li><strong>Zones: </strong>9 - 11</li>
		<li><strong>Height: </strong>2 - 3 feet</li>
		<li><strong>Blooms in: </strong>MiddleSummer - MiddleFall</li>
		<li><strong>Features: </strong>Tolerates heat</li>
	</ul>
</div>
</div>
<!--  End product image  -->


</div>
<div id="container">	
	
<!-- Start	Product details -->
	<div class="product-details">
		
		<!-- 	Product Name -->
	<h1>Birthday Flower Bouquet</h1>
<!-- 		<span class="hint new">New</span> -->
<!-- 		<span class="hint free-shipping">Free Shipping</span> -->
<!-- 		the Product rating -->
	<span class="hint-star star">
		<i class="fa fa-star" aria-hidden="true"></i>
		<i class="fa fa-star" aria-hidden="true"></i>
		<i class="fa fa-star" aria-hidden="true"></i>
		<i class="fa fa-star-half-o" aria-hidden="true"></i>
		<i class="fa fa-star-o" aria-hidden="true"></i>
	</span>
		
	
<!-- The most important information about the product -->
		<p class="information">"This beautiful bunch is specially meant to steal heart of your valentine this season.Celebrate Valentine 2022 with your beloved by presenting this charming bouquet 100 Red Rose In A Tissue ."</p>

		
		
<!-- 		Control -->
<div class="control">
	
<!-- Start Button buying -->
	<button class="btn">
<!-- 		the Price -->
	 <span class="price">4045/-</span>
<!-- 		shopping cart icon-->
   <span class="shopping-cart"><i class="fa fa-shopping-cart" aria-hidden="true"></i></span>
<!-- 		Buy Now / ADD to Cart-->
   <span class="buy">Buy Now</span>
 </button>
	<!-- End Button buying -->
	
</div>
			
</div>
	
<!-- 	End	Product details   -->
	
	
	
<!-- 	Start product image & Information -->
	
<div class="product-image">
	
	<img src="https://5.imimg.com/data5/YQ/IQ/MY-65929370/anthurium-flowers-500x500.jpg">
	
<!-- 	product Information-->
<div class="info">
	<h2>The Description</h2>
	<ul>
		<li><strong>Sun Needs: </strong>Full Sun</li>
		<li><strong>Soil Needs: </strong>Damp</li>
		<li><strong>Zones: </strong>9 - 11</li>
		<li><strong>Height: </strong>2 - 3 feet</li>
		<li><strong>Blooms in: </strong>MiddleSummer - MiddleFall</li>
		<li><strong>Features: </strong>Tolerates heat</li>
	</ul>
</div>
</div>
<!--  End product image  -->


</div>
<div id="container">	
	
<!-- Start	Product details -->
	<div class="product-details">
		
		<!-- 	Product Name -->
	<h1>Chocolate Bouquet</h1>
<!-- 		<span class="hint new">New</span> -->
<!-- 		<span class="hint free-shipping">Free Shipping</span> -->
<!-- 		the Product rating -->
	<span class="hint-star star">
		<i class="fa fa-star" aria-hidden="true"></i>
		<i class="fa fa-star" aria-hidden="true"></i>
		<i class="fa fa-star" aria-hidden="true"></i>
		<i class="fa fa-star-half-o" aria-hidden="true"></i>
		<i class="fa fa-star-o" aria-hidden="true"></i>
	</span>
		
	
<!-- The most important information about the product -->
		<p class="information">"The image displayed is indicative in nature. Actual product may vary in shape or design as per the availability."</p>

		
		
<!-- 		Control -->
<div class="control">
	
<!-- Start Button buying -->
	<button class="btn">
<!-- 		the Price -->
	 <span class="price">2000/-</span>
<!-- 		shopping cart icon-->
   <span class="shopping-cart"><i class="fa fa-shopping-cart" aria-hidden="true"></i></span>
<!-- 		Buy Now / ADD to Cart-->
   <span class="buy">Buy Now</span>
 </button>
	<!-- End Button buying -->
	
</div>
			
</div>
	
<!-- 	End	Product details   -->
	
	
	
<!-- 	Start product image & Information -->
	
<div class="product-image">
	
	<img src="https://i.pinimg.com/originals/e8/c5/a0/e8c5a02f9443b065c735286df0c5e1ed.jpg">
	
<!-- 	product Information-->
<div class="info">
	<h2>The Description</h2>
	<ul>
		<li><strong>Types of chocolates: </strong>customers choice</li>
	</ul>
</div>
</div>
<!--  End product image  -->


</div>
<div id="container">	
	
<!-- Start	Product details -->
	<div class="product-details">
		
		<!-- 	Product Name -->
	<h1>Ferrero Rochre Chocolate Bouquet</h1>
<!-- 		<span class="hint new">New</span> -->
<!-- 		<span class="hint free-shipping">Free Shipping</span> -->
<!-- 		the Product rating -->
	<span class="hint-star star">
		<i class="fa fa-star" aria-hidden="true"></i>
		<i class="fa fa-star" aria-hidden="true"></i>
		<i class="fa fa-star" aria-hidden="true"></i>
		<i class="fa fa-star-half-o" aria-hidden="true"></i>
		<i class="fa fa-star-o" aria-hidden="true"></i>
	</span>
		
	
<!-- The most important information about the product -->
		<p class="information">"The image displayed is indicative in nature. Actual product may vary in shape or design as per the availability."</p>

		
		
<!-- 		Control -->
<div class="control">
	
<!-- Start Button buying -->
	<button class="btn">
<!-- 		the Price -->
	 <span class="price">6490/-</span>
<!-- 		shopping cart icon-->
   <span class="shopping-cart"><i class="fa fa-shopping-cart" aria-hidden="true"></i></span>
<!-- 		Buy Now / ADD to Cart-->
   <span class="buy">Buy Now</span>
 </button>
	<!-- End Button buying -->
	
</div>
			
</div>
	
<!-- 	End	Product details   -->
	
	
	
<!-- 	Start product image & Information -->
	
<div class="product-image">
	
	<img src="https://www.prettypetals.com/uploads/product-pics/1573648745_4.jpg">
	
<!-- 	product Information-->
<div class="info">
	<h2>The Description</h2>
	<ul>
	        <li>25 Piece Ferrero Rocher<li>
            <li>Yellow Packing Paper<li>
            <li>Yellow Ribbon<li>
	</ul>
</div>
</div>
<!--  End product image  -->


</div>
<div id="container">	
	
<!-- Start	Product details -->
	<div class="product-details">
		
		<!-- 	Product Name -->
	<h1>20 Tulip Bouquet</h1>
<!-- 		<span class="hint new">New</span> -->
<!-- 		<span class="hint free-shipping">Free Shipping</span> -->
<!-- 		the Product rating -->
	<span class="hint-star star">
		<i class="fa fa-star" aria-hidden="true"></i>
		<i class="fa fa-star" aria-hidden="true"></i>
		<i class="fa fa-star" aria-hidden="true"></i>
		<i class="fa fa-star-half-o" aria-hidden="true"></i>
		<i class="fa fa-star-o" aria-hidden="true"></i>
	</span>
		
	
<!-- The most important information about the product -->
		<p class="information">" The tulip originated centuries ago in Persia, where it played a significant role in the art and culture of the time.
Pink Tulips represent purity, innocence and respect, they would be a great flower for a wedding or to give with an apology."</p>

		
		
<!-- 		Control -->
<div class="control">
	
<!-- Start Button buying -->
	<button class="btn">
<!-- 		the Price -->
	 <span class="price">3000/-</span>
<!-- 		shopping cart icon-->
   <span class="shopping-cart"><i class="fa fa-shopping-cart" aria-hidden="true"></i></span>
<!-- 		Buy Now / ADD to Cart-->
   <span class="buy">Buy Now</span>
 </button>
	<!-- End Button buying -->
	
</div>
			
</div>
	
<!-- 	End	Product details   -->
	
	
	
<!-- 	Start product image & Information -->
	
<div class="product-image">
	
	<img src="https://sentrabunga.com/image/cache/catalog/Hand%20Bouquet/20-tulip-bouquet-500x554.jpg">
	
<!-- 	product Information-->
<div class="info">
	<h2>The Description</h2>
	<ul>
	    <li>20 pink Tulips<li>
         <li>Scindapsus Leaves<li>
          <li>Tied with Ribbon<li>
		
	</ul>
</div>
</div>
<!--  End product image  -->


</div>
<div id="container">	
	
<!-- Start	Product details -->
	<div class="product-details">
		
		<!-- 	Product Name -->
	<h1>Hydrangea Bouquet</h1>
<!-- 		<span class="hint new">New</span> -->
<!-- 		<span class="hint free-shipping">Free Shipping</span> -->
<!-- 		the Product rating -->
	<span class="hint-star star">
		<i class="fa fa-star" aria-hidden="true"></i>
		<i class="fa fa-star" aria-hidden="true"></i>
		<i class="fa fa-star" aria-hidden="true"></i>
		<i class="fa fa-star-half-o" aria-hidden="true"></i>
		<i class="fa fa-star-o" aria-hidden="true"></i>
	</span>
		
	
<!-- The most important information about the product -->
		<p class="information">"A luxury bouquet of Colombian Hydrangeas. This stunning Hydrangea bouquet offsets striking Ivory White Hydrangeas against vibrant green foliage. This bouquet exudes elegant style through simplicity."</p>

		
		
<!-- 		Control -->
<div class="control">
	
<!-- Start Button buying -->
	<button class="btn">
<!-- 		the Price -->
	 <span class="price">5049/-</span>
<!-- 		shopping cart icon-->
   <span class="shopping-cart"><i class="fa fa-shopping-cart" aria-hidden="true"></i></span>
<!-- 		Buy Now / ADD to Cart-->
   <span class="buy">Buy Now</span>
 </button>
	<!-- End Button buying -->
	
</div>
			
</div>
	
<!-- 	End	Product details   -->
	
	
	
<!-- 	Start product image & Information -->
	
<div class="product-image">
	
	<img src="https://www.theflowerstandchelsea.com/wp-content/uploads/2017/01/Luxury-Hydrangea-Bouquet-London.png">
	
<!-- 	product Information-->
<div class="info">
	<h2>The Description</h2>
	<ul>
		<li>Colombian Hydrangeas are grown throughout the premium floral growing regions of Colombia.</li>
	</ul>
</div>
</div>
<!--  End product image  -->


</div>

</body>
</html>