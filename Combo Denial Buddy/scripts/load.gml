sprite_change_offset("idle", 12, 12);

idle_spr = sprite_get("idle")
run_spr = sprite_get("idle")
turn_spr = sprite_get("idle")
ledge_spr = sprite_get("idle")
wait_spr = sprite_get("idle")
taunt_spr = sprite_get("idle")

velocity_change = 10;
movement_duration = 0;
previous_owner_has_hit = false;
previous_owner_attack_has_hit = false;

pet_w = 12;
run_speed = 10;
max_run_dist = 200;