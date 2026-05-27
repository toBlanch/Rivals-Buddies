var attacking = owner.state == PS_ATTACK_AIR || owner.state == PS_ATTACK_GROUND;
var new_state_started = owner.state_timer < previous_owner_state_timer || owner.state != previous_owner_state;
var attack_just_started = attacking && new_state_started;

if(attack_just_started)
{
	var attack_exists = ds_map_exists(move_cooldowns, owner.attack);
	if(!attack_exists || current_time - move_cooldowns[? owner.attack] >= cooldown_duration)
	{
		move_cooldowns[? owner.attack] = current_time;
	}
	else
	{
		owner.state = PS_PRATFALL;
		locked_remaining_duration = locked_duration;
		owner.x = owner_initial_x;
		owner.y = owner_initial_y;
		owner.hsp = owner_initial_hsp;
		owner.vsp = owner_initial_vsp;

		sound_play(sound_get("disabled"));
		idle_spr = locked_sprite;
		run_spr = locked_sprite;
		turn_spr = locked_sprite;
		ledge_spr = locked_sprite;
		wait_spr = locked_sprite;
		taunt_spr = locked_sprite;
	}
}

if(locked_remaining_duration >= 0)
{
	locked_remaining_duration -= 1;
	x = owner.x;
	y = owner.y;
	if(locked_remaining_duration < 0)
	{
		idle_spr = default_sprite;
		run_spr = default_sprite;
		turn_spr = default_sprite;
		ledge_spr = default_sprite;
		wait_spr = default_sprite;
		taunt_spr = default_sprite;
		if (owner.state == PS_PRATFALL)
		{
			owner.state = PS_IDLE;
		}
	}
}

owner_initial_x = owner.x;
owner_initial_y = owner.y;
owner_initial_hsp = owner.hsp;
owner_initial_vsp = owner.vsp;
previous_owner_state = owner.state;
previous_owner_state_timer = owner.state_timer;