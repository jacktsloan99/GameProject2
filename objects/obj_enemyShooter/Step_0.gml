/// @description Shooting
// You can write your code in this editor
if(skeletonThrowableCooldown <= 0)
	{
		instance_create_layer(x, y, "Layer_Bullet", obj_SkeletonProjectile);
		// sets how long inbetween each bullet
		skeletonThrowableCooldown = projectileSpawnRate;
	}
	skeletonThrowableCooldown += -1;