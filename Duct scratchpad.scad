include <RotorX.scad>;

//$fn = 40;

_ductInnerDiameter = 78;



linear_extrude(height = 50, slices = 50, center = true) {
  difference() {
	offset(r = 2) {
		circle(d = _ductInnerDiameter, center = true);
	}
    circle(d = _ductInnerDiameter, center = true);
  }
}