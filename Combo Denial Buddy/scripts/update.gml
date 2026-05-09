// if((owner.has_hit && !previous_owner_has_hit) ||
// 	(owner.attack.has_hit && !previous_owner_attack_has_hit))
if (owner.has_hit || owner.attack.has_hit)
{
	movement_duration = 10;
}

if (movement_duration > 0)
{
	movement_duration -= 1;
	var final_velocity_change = 0;
	if (owner.spr_dir == -1){
		final_velocity_change = velocity_change;
	}
	else{
		final_velocity_change = -velocity_change;
	}
	owner.hsp += final_velocity_change;
}

// previous_owner_has_hit = owner.has_hit;
// previous_owner_attack_has_hit = owner.attack.has_hit;