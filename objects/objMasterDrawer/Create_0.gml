instancesCount = 20;
instances = ds_grid_create(2, instancesCount);

ds_grid_set_region(instances, 0, 0, 1, instancesCount - 1, 1000000);