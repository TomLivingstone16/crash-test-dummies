if room == rLevel4 && !instance_exists(oFloatingSaw) //In case we somehow miss a turret during the leap of faith
{
	instance_destroy(oObstacleSpawner) //Destroy all turrets once the saws are gone
}