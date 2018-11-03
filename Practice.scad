_3020PropWidth = 76.5;
_ductInnerDiameter = 78;

cylinder(h=5, r=5, center = true);
cube(size = [_3020PropWidth, 5, 1], center = true);

linear_extrude(height = 30, slices = 100, center = true) {
  difference() {
	offset(r = 2) {
		circle(d=_ductInnerDiameter, center = true);
	}
    circle(d=_ductInnerDiameter, center = true);
  }
}