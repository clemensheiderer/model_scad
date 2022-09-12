$fn = 100;

inner_circle_r = 0.1;
module torsus(x) 


{

rotate_extrude()
translate([0.85, 0, 0])
circle(inner_circle_r);


}

guss = 0.32;
translate([0.95, 0.95, 0.55])
{



rotate_extrude()
translate([0.4, 0, 0])
difference()
{
square([guss, guss]);
    translate([guss, guss])
circle(r = guss);
}
}


difference(){
translate([0.95, 0.95, 0.55])
cylinder(0.8, 0.4, 0.4);

translate([0.95, 0.95, 0.55])

cylinder(0.6, 0.35, 0.1);
}





difference(){

translate([0.95, 0.95, 0.45])
cylinder(0.1, 0.65, 0.65);

translate([0.95, 0.95, 0.45])
cylinder(0.4, 0.2, 0.2); 
}

translate([0.95, 0.95, 0.45])

rotate_extrude()
translate([0.65, 0, 0])
circle(0.1);

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

difference(){
translate([0.95, 0.95, 0.15])
cylinder(0.3, 0.75, 0.75); 
translate([0.95, 0.95, 0.15])
cylinder(0.4, 0.45, 0.45); 
}


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