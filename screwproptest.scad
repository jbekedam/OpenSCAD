

include <screwprop.scad>;
screwprop(12, 2, 20, 3);
rotate(a=[0,90,0])  {screwprop(12, 2, 20, 3);};
rotate(a=[0,180,0]) {screwprop(12, 2,  20, 3);};
rotate(a=[0,270,0]) {screwprop(12, 2, 20, 3);};
translate([0,1,0])rotate(a=[90,0,0]) cylinder(h = 3, r=2.1, $fn=60);
