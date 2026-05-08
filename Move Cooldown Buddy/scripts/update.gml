var current_attack = owner.attack;
var current_state = owner.state;
var attack_just_started = (current_state == PS_ATTACK_GROUND || current_state == PS_ATTACK_AIR) && (last_attack_state != PS_ATTACK_GROUND && last_attack_state != PS_ATTACK_AIR);

if(attack_just_started && current_attack != -1)
{
	if(!ds_map_exists(move_cooldowns, current_attack) || current_time - move_cooldowns[? current_attack] >= cooldown_duration)
	{
		move_cooldowns[? current_attack] = current_time;
	}
	else
	{
		rush_time = 0;
		owner.state = PS_PRATFALL;
		pratfall_counter = pratfall_duration;
		sound_play(sound_get("disabled"));
		idle_spr = sprite_get("locked")
		run_spr = sprite_get("locked")
		turn_spr = sprite_get("locked")
		ledge_spr = sprite_get("locked")
		wait_spr = sprite_get("locked")
		taunt_spr = sprite_get("locked")
	}
}

if(pratfall_counter >= 0)
{
	pratfall_counter -= 1;
	x = owner.x;
	y = owner.y;
	if(pratfall_counter < 0)
	{
		idle_spr = sprite_get("idle")
		run_spr = sprite_get("idle")
		turn_spr = sprite_get("idle")
		ledge_spr = sprite_get("idle")
		wait_spr = sprite_get("idle")
		taunt_spr = sprite_get("idle")
		if (owner.state = PS_PRATFALL)
		{
			owner.state = PS_IDLE;
		}
	}
}

last_attack_state = current_state;