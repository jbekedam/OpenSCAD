//$fn = 50;

HubX = 11;
HubY = 5.2;
HubZ = 4;
ShaftRadius = 0.75;
TMountRadius = 1;

1104_Motor(HubX, HubY, HubZ, ShaftRadius, TMountRadius);

// 3020Propeller(HubX, HubY, HubZ, ShaftRadius, TMountRadius);

// translate([HubX / 4, 0, 0]) {
// 	M2x6mmScrew();// Right t-mount screw
// }
// translate([-HubX / 4, 0, 0]) {
// 	M2x6mmScrew();// Left t-mount screw
// }



module 1104_Motor(hubX, hubY, hubZ, shaftR, tmountR) {
	color("DimGray") {
		_motorR = 7;
		_motorHeight = 12.5;
		difference() {
			translate([0, 0, -8.26]) {	// TODO: What's the basis for this magic number?
				cylinder(r = _motorR, h = _motorHeight, center = true);
			}

			// Drive shaft
			cylinder(r = shaftR, h = hubZ, center = true);
		}
		
	}
}

module M2x6mmScrew() {
	color("DarkSlateGray") {
		translate([0, 0, 2.75]) {
			render() difference() {
				cylinder(r = 2, h = 1.5, center = true);
				cylinder(r = .85, h = 1.5, center = true);
			}
		}
		translate([0, 0, -1]) {
			cylinder(r = 1, h = 6, center = true);
		}
	}
}

module 3020Propeller(hubX, hubY, hubZ, shaftR, tmountR) {
	color("DarkOrange") {
		_bladeX = 33;
		_bladeY = 9;
		
		translate([_bladeX  - hubX, 0, 0]) {
			scale([1, _bladeY / _bladeX, 1]) {
				cylinder(d = _bladeX, h = 1, center = true);
			}
		}
		translate([-_bladeX  + hubX, 0, 0]) {
			scale([1, _bladeY / _bladeX, 1]) {
				cylinder(d = _bladeX, h = 1, center = true);
			}
		}
		render() difference() {
			// The hub
			scale([1, hubY / hubX, 1]) {
				cylinder(d = hubX, h = hubZ, center = true);
			}

			// Subtract the drive shaft & screw holes
			// Drive shaft
			cylinder(r = shaftR, h = hubZ, center = true);
			// Right T-Mount
			translate([hubX / 4, 0, 0]) {
				cylinder(r = tmountR, h = hubZ, center = true);
			}
			// Left T-Mount
			translate([-hubX / 4, 0, 0]) {
				cylinder(r = tmountR, h = hubZ, center = true);
			}
		}
	}
}
