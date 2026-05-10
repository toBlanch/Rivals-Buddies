sprite_change_offset("idle", 64, 64);

idle_spr = sprite_get("idle");
run_spr = sprite_get("idle");
turn_spr = sprite_get("idle");
ledge_spr = sprite_get("idle");
wait_spr = sprite_get("idle");
taunt_spr = sprite_get("idle");

percent_scale = 0.01;
max_percent_for_scaling = 250;

previous_current_percent = 0;

pet_w = 64;
run_speed = 0;
max_run_dist = 1000;

depth = -1000;
image_alpha = 0;