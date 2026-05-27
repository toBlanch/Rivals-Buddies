sprite_change_offset("idle", 30, 30);

default_sprite = sprite_get("idle");
idle_spr = default_sprite;
run_spr = default_sprite;
turn_spr = default_sprite;
ledge_spr = default_sprite;
wait_spr = default_sprite;
taunt_spr = default_sprite;

velocity_change = 10;
movement_duration = 30;
movement_remaining_duration = 0;
owner_starting_x = 0;
owner_starting_y = 0;
can_start = false;
attack_was_grounded = false;

pet_w = 30;
run_speed = 10;
max_run_dist = 200;
depth = -1000;
image_alpha = 0;