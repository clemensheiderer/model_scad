
$fn = 150;


inner_circle_r = 0.1;
module torsus(x) 


{

rotate_extrude()
translate([0.85, 0, 0])
circle(inner_circle_r);


}

/*
difference(){
translate([0.95, 0.95, 0.15])

cylinder(0.35, 0.75, 0.75); 
translate([0.95, 0.95, 0.15])    
cylinder(0.35, 0.55, 0.20); 


}
*/








//first part

difference(){

translate([0.95, 0.95, 0.5])
cylinder(0.1, 0.65, 0.65);

translate([0.95, 0.95, 0.5])
cylinder(0.2, 0.2, 0.2); 
}

//translate([0.95, 0.95, 0.5])
//cylinder(0.1, 0.65, 0.65);
//

translate([0.95, 0.95, 0.5])

rotate_extrude()
translate([0.65, 0, 0])
circle(0.1);


//

//cylinder

difference(){
translate([0.95, 0.95, 0.15])

cylinder(0.35, 0.75, 0.75); 
translate([0.95, 0.95, 0.15])    
cylinder(0.35, 0.55, 0.20); 


}



rrad = 0.2;

translate([0.95, 0.95, 0.15])

rotate_extrude()
translate([0.75, 0, 0])

difference()
{
square([rrad, rrad]);
    translate([rrad, rrad])
circle(r = rrad);
}




//both rings


difference(){

translate([0.95, 0.95, 0.1])
cylinder(0.05, 0.85, 0.85); 

translate([0.95, 0.95, 0.1])
cylinder(0.08, 0.55, 0.55); 
}

difference(){

translate([0.95, 0.95, 0.1])
torsus(inner_circle_r);

translate([0.95, 0.95, 0.15])
cylinder(0.1, 1.2, 1.2); 
}


difference(){

translate([0.95, 0.95, 0])
cylinder(0.1, 0.85, 0.85); 

translate([0.95, 0.95, 0])
cylinder(1, 0.65, 0.65); 
}


difference(){


translate([0.95, 0.95, 0])
torsus(inner_circle_r);   

translate([-0.4, -0.4, -2.5])

cube(2.5);

}