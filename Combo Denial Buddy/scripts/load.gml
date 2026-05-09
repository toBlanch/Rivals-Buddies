sprite_change_offset("idle", 30, 30);

idle_spr = sprite_get("idle")
run_spr = sprite_get("idle")
turn_spr = sprite_get("idle")
ledge_spr = sprite_get("idle")
wait_spr = sprite_get("idle")
taunt_spr = sprite_get("idle")

velocity_change = 10;
movement_duration = 20;
movement_remaining_duration = 0;
owner_starting_y = 0;
can_start = false;

pet_w = 30;
run_speed = 10;
max_run_dist = 200;
depth = -1000;
image_alpha = 0;