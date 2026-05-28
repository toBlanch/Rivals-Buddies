sprite_change_offset("idle", 32, 32);

default_sprite = sprite_get("idle");
idle_spr = default_sprite;
run_spr = default_sprite;
turn_spr = default_sprite;
ledge_spr = default_sprite;
wait_spr = default_sprite;
taunt_spr = default_sprite;

percent_scale = 0.01;
max_percent_for_scaling = 250;

previous_current_percent = 0;

pet_w = 64;
run_speed = 0;
max_run_dist = 1000;

depth = -1000;
image_alpha = 0;