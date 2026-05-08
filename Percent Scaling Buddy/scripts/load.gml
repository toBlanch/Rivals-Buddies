sprite_change_offset("idle", 50, 50);

idle_spr = sprite_get("idle");
run_spr = sprite_get("idle");
turn_spr = sprite_get("idle");
ledge_spr = sprite_get("idle");
wait_spr = sprite_get("idle");
taunt_spr = sprite_get("idle");

percent_scale = 3;
max_percent_for_scaling = 250;
max_width = 50;

owner_could_move = true;
owner_previous_state = "PS_IDLE";

pet_w = 50;
run_speed = 10;
max_run_dist = 200;

depth = -1000;
image_alpha = 0;