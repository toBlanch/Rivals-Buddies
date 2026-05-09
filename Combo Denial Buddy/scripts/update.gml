var has_hit = owner.has_hit;

if (has_hit && can_start)
{
	movement_remaining_duration = movement_duration;
	owner_starting_y = owner.y;
}

if (movement_remaining_duration > 0)
{
	movement_remaining_duration -= 1;
	image_alpha = 1;
	var facing_left = owner.spr_dir == -1;
	if (facing_left)
	{
		owner.hsp = velocity_change;
	}
	else
	{
		owner.hsp = -velocity_change;
	}
	owner.y = owner_starting_y;
	x = owner.x;
	y = owner.y;
}
else
{
	image_alpha = 0;
}

var attacking = owner.state == PS_ATTACK_AIR || owner.state == PS_ATTACK_GROUND;
can_start = !has_hit && attacking;