sprite_change_offset("idle", 12, 12);

idle_spr = sprite_get("idle")
run_spr = sprite_get("idle")
turn_spr = sprite_get("idle")
ledge_spr = sprite_get("idle")
wait_spr = sprite_get("idle")
taunt_spr = sprite_get("idle")

maximum_velocity = 20;
velocity_change = 5;
movement_duration = 20;
movement_remaining_duration = 0;
previous_has_hit = false;
previous_hitbox_num_to_hit = noone;

pet_w = 12;
run_speed = 10;
max_run_dist = 200;