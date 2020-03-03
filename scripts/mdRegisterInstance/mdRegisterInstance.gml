/// mdRegisterInstance(ins)
/// @param ins

var ins = argument[0],
	
	size = objMasterDrawer.instancesCount;
	
for (var i=0;i<size;i++) {
	if (objMasterDrawer.instances[# 0, i] == 1000000) {
		objMasterDrawer.instances[# 0, i] = ins.id;
		objMasterDrawer.instances[# 1, i] = ins.y;
		
		exit;
	}
}