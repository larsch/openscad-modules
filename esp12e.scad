module esp12e() {
     module pad() {
	  difference() {
	       cube([1,1.5,1]);
	       translate([0.5,0,-1])
		    cylinder(d=0.5,h=3,$fn=8);
	       translate([0.5,1,-1])
		    cylinder(d=0.5,h=3,$fn=8);
	  }
     }

     module endpad() {
	  difference() {
	       cube([1,1.0,1]);
	       translate([0.5,0,-1])
		    cylinder(d=0.5,h=3,$fn=8);
	  }
     }

     difference() {
	  color("blue") cube([24,16,1]);
	  for (j=[0:1])
	       translate([0,j*(16-1.5+0.5),0])
		    union() {
		    for (i=[0:7])
			 translate([24-1.8-0.5-2*i,-0.5,-1]) cube([1,2,3]);
	       }
	  for (i=[0:5])
	       translate([25,2.5+2*i,-1])
		    rotate(90,[0,0,1])
		    cube([1,2,3]);
     }


     translate([0,0,0])
	  union() {
	  for (i=[0:7])
	       translate([1+24-1.8-0.5-2*i,16,0])
		    rotate(180,[0,0,1])
		    pad();
	  for (i=[0:7])
	       translate([24-1.8-0.5-2*i,0,]) pad();
	  for (i=[0:5])
	       translate([24,2.5+2*i,0])
		    rotate(90,[0,0,1])
		    endpad();
     }

     color("silver")
	  translate([7.5,2,1]) cube([15,12,2]);
}

esp12e();
