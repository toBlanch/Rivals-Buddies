sprite_change_offset("idle", 12, 12);

default_sprite = sprite_get("idle");
locked_sprite = sprite_get("locked");

idle_spr = default_sprite;
run_spr = default_sprite;
turn_spr = default_sprite;
ledge_spr = default_sprite;
wait_spr = default_sprite;
taunt_spr = default_sprite;

// Constants
cooldown_duration = 5000; 
locked_duration = 2;

move_cooldowns = ds_map_create(); 
previous_owner_state_timer = -1;
previous_owner_state = PS_IDLE;
locked_remaining_duration = -1; 
owner_initial_x = 0;
owner_initial_y = 0;
owner_initial_hsp = 0;
owner_initial_vsp = 0;

// Normal Buddy stats
pet_w = 12;
run_speed = 10;
max_run_dist = 200;