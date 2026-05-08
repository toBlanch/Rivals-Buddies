sprite_change_offset("idle", 12, 12);

idle_spr = sprite_get("idle")
run_spr = sprite_get("idle")
turn_spr = sprite_get("idle")
ledge_spr = sprite_get("idle")
wait_spr = sprite_get("idle")
taunt_spr = sprite_get("idle")

// Constants
rush_duration = 30;
cooldown_duration = 5000; 
pratfall_duration = 2;

move_cooldowns = ds_map_create(); 
last_attack_state = -1;
pratfall_counter = 0; 

// Normal Buddy stats
pet_w = 12;
run_speed = 10;
max_run_dist = 200;