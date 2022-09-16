size(400,400); 
//center is (199,199)
//noFill();
stroke(#FFFFFF);

//bottom petal
bezier(199, 199, 149, 300, 149, 330, 199, 369);
bezier(199, 199, 249, 300, 249, 330, 199, 369);

//top right petal
bezier(199, 199, 311.5, 192, 337.5, 177, 346, 114); 
bezier(200, 199, 261.5, 105.2, 287.5, 90.2, 347, 114); 

//top left petal
bezier(199, 199, 136.5, 105.2, 110.6, 90.2, 51.8, 115); 
bezier(199, 198, 86.5, 191.8, 60.6, 177, 51.8, 114); 

//add deep blue inner lining later
fill(#81D6FF); 

//circles
fill(#E0F5FF); 
circle(199, 329, 25); 
circle(86.4, 134, 25); 
circle(311.6, 134, 25); 
