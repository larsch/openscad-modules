module pogopin(compress = 0.0) {
     $fn = 16;
     h1 = 13.0;
     h2 = 2.65;
     h3 = 0.7;
     color("silver") union() {
	  translate([0,0,h1+h2+h3-compress]) cylinder(h = 0.2, r1 = 0.45, r2 = 0.0);
	  translate([0,0,h1+h2-compress]) cylinder(h = 0.7, r = 0.45);
	  translate([0,0,h1-compress]) cylinder(h=h2, r = 0.24);
     }
     cylinder(r=0.34,h=h1);
}
pogopin();
