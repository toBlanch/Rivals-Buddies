var attack = owner.attack;
var has_hit = owner.has_hit || (attack.has_hit && previous_hitbox_num_to_hit != attack.hitbox_num);

if (movement_remaining_duration > 0)
{
	movement_remaining_duration -= 1;
	var final_velocity_change = 0;
	if (owner.spr_dir == -1){
		final_velocity_change = velocity_change;
	}
	else{
		final_velocity_change = -velocity_change;
	}
	owner.hsp = final_velocity_change;
	owner.y = owner_starting_y;
	x = owner.x;
	y = owner.y;
}
else if (has_hit && !previous_has_hit)
{
	movement_remaining_duration = movement_duration;
	owner_starting_y = owner.y;
	previous_hitbox_num_to_hit = attack.hitbox_num;
}

previous_has_hit = has_hit;