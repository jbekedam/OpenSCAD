include <RX3020_propeller.scad>;

//$fn = 40;

// Right bell mount
translate([_hubX / 4, 0, 0]) {
	M2x6mmScrew();
	//cylinder(r = _tMountR, h = _hubZ, center = true);
}
// Left bell mount
translate([-_hubX / 4, 0, 0]) {
	M2x6mmScrew();
	//cylinder(r = _tMountR, h = _hubZ, center = true);
}



module RX1104_Motor() {
	color("DimGray") {
		_hubZ = 4;
		_shaftR = 0.75;
		cylinder(r = _shaftR, h = _hubZ, center = true);
		

	}
}

module M2x6mmScrew() {
	
}