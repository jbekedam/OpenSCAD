color("DarkOrange") {
	_hubX = 11;
	_hubY = 5.2;
	_hubZ = 4;

	_bladeX = 33;
	_bladeY = 9;

	_shaftR = 0.75;
	_tMountR = 1;
	
	translate([_bladeX  - _hubX, 0, 0]) {
		scale([1, _bladeY / _bladeX, 1]) {
			cylinder(d = _bladeX, h = 1, center = true);
		}
	}
	translate([-_bladeX  + _hubX, 0, 0]) {
		scale([1, _bladeY / _bladeX, 1]) {
			cylinder(d = _bladeX, h = 1, center = true);
		}
	}
	render() difference() {
		// The hub
		scale([1, _hubY / _hubX, 1]) {
			cylinder(d = _hubX, h = _hubZ, center = true);
		}

		// Subtract the drive shaft & screw holes
		// Drive shaft
		cylinder(r = _shaftR, h = _hubZ, center = true);
		// Right bell mount
		translate([_hubX / 4, 0, 0]) {
			cylinder(r = _tMountR, h = _hubZ, center = true);
		}
		// Left bell mount
		translate([-_hubX / 4, 0, 0]) {
			cylinder(r = _tMountR, h = _hubZ, center = true);
		}
	}
	
}