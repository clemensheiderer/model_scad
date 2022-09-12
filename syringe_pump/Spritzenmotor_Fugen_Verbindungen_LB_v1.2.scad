    $fn=40;
//definiere Punkte für Polygon d. Querschnittes. X...äußerer Punkt. 
//X1...Punkt X um Wandstärke (=0.125) hineinversetzt
A=[-3.125, 0];              A1=[-3,0.125];
B=[3.125, 0];               B1=[3,0.125];
C=[3.125, 4];               C1=[3, 3.875];
D=[2.25, 4];                D1=[2.25, 3.875];
E=[1.5, 3];                 E1=[1.5, 2.875]; 
F=[0.75, 4];                F1=[0.75, 3.875]; 
G=[-0.75, 4];               G1=[-0.75, 3.875];
H=[-1.5, 3];                H1=[-1.5, 2.875];
I=[-2.25, 4];               I1=[-2.25, 3.875];
J=[-3.125, 4];              J1=[-3, 3.875];
K=[-3.125, 2.875];
L=[3.125, 2.875];

//Koordinaten für Befestigungsquader am grünen Teil (innen 1 inch x 1 inch)
Q=[3,2.5];
R=[2.875,2.5];
S=[2.875,3.5];
T=[3,3.5];
Q2=[-3,2.5];
R2=[-2.875,2.5];
S2=[-2.875,3.5];
T2=[-3,3.5];

//Koordinaten für große Platte mit Schiene
a=[3.0625,3.75];
b=[-3.0625,3.75];
c=[-3.0625,0.5];
d=[3.0625,0.5];


A4=[-3.125, 2]; //grüner linker hintere Ecke clemens
B4=[3.125, 2];  //grüne linke vordere Ecke

// äußere difference funktion für bohrung an den Seiten durch Hauptteil
difference () {
    
union(){
    
difference() {
linear_extrude(height = 12, convexity = 10, twist = 0)                      
    //height=12 in = 1 ft
polygon(points=[A,B,C,D,E,F,G,H,I,J, A1, B1, C1, D1, E1, F1, G1, H1, I1, J1], paths=[[0,1,2,3,4,5,6,7,8,9],[10,11,12,13,14,15,16,17,18,19]]);
translate([-5,2,3])
cube(10);
}
linear_extrude(height = 0.125, convexity = 10, twist = 0)
polygon(points=[K,L,C,D,E,F,G,H,I,J], paths=[[0,1,2,3,4,5,6,7,8,9]]);


}
zylinder1();
zylinder2();
bigSchiene();
smallSchiene();
}


/* es fehlt noch an obigem Teil:    
        *Bohrungen
        *"Schienen" 
        *Löcher für Rastnasen oder ähnliches zum Zusammenstecken
*/

{

//translate([0, 0, 0])

A4=[-3.125, 2];
B4=[3.125, 2];                           
C4=[3.125, 4];
D4=[-3.125, 4]; 

  


//linear_extrude(height = 0.125, convexity = 10, twist = 0)
//polygon(points=[A4, B4, C4,D4]);



}



union(){

translate([0, 0, 3])


//grüner Teil Anfang


 
difference(){


linear_extrude(height = 0.125, convexity = 10, twist = 0)

//polygon(points=[A, B, C,D, E, F, G]), paths=[[0,1,2,3,4,5,6]]);





polygon(points=[A4, B4, C, D, E, F, G, H, I, J]);
  
   
translate([1.5, 2.5, 0])
bohrung(inner_circle_r);

translate([-1.5, 2.5, 0])
bohrung(inner_circle_r); 
    
}


//grüner Teil Ende

//Befestigung grünes Teil (Mutter-Schraube)




//Quader1

//difference=Bohrung
difference(){

translate([0,0,2])

linear_extrude(height = 1, convexity = 10, twist = 0)
polygon(points=[Q,R,S,T]);
    zylinder1();
}

//Quader2

difference(){
translate([0,0,2])

linear_extrude(height = 1, convexity = 10, twist = 0)
polygon(points=[Q2,R2,S2,T2]);
zylinder2();
    }
}




//die beiden Zylinder für die Bohrungen
module zylinder1()
    {
translate([5,3,2.5])
rotate([0,-90,0])
cylinder(r=0.125,h=2.5,$fn=100);
    }
    
    module zylinder2()
    {
translate([-5,3,2.5])
rotate([0,90,0])
cylinder(r=0.125,h=2.5,$fn=100);
    }
    
    
//zylinder2();
//zylinder1();
    
inner_circle_r = 0.1875; //3/16 inch
module bohrung(x) 
{
linear_extrude(height = 0.4, center = true, convexity = 10, twist = 0)
circle(inner_circle_r);
}

module bigSchiene()
{
    translate([0,0,9.125])
    linear_extrude(height=0.125, convexity=10, twist=0)
    polygon(points=[a,b,c,d]);
    }
    
module smallSchiene()
{
    translate([0,0,10.125])
    linear_extrude(height=0.125, convexity=10, twist=0)
    polygon(points=[a,b,c,d]);
    }
//bigPlate();
