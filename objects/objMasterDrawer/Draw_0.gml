for (var i=0;i<instancesCount;i++) {
	var ins = instances[# 0, i];
	
	if (ins == 1000000) { 
		break; 
	}
	
	instances[# 1, i] = ins.y;
}

ds_grid_sort(instances, 1, true);

for (var i=0;i<instancesCount;i++) {
	var ins = instances[# 0, i];
	
	if (ins == 1000000) { 
		exit; 
	}
	
	draw_sprite_ext(ins.sprite_index, ins.image_index, ins.x, ins.y, ins.image_xscale, ins.image_yscale, ins.image_angle, ins.image_blend, ins.image_alpha);
}