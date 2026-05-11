sprite_change_offset("idle", 12, 12);

default_sprite = sprite_get("idle");
idle_spr = default_sprite;
run_spr = default_sprite;
turn_spr = default_sprite;
ledge_spr = default_sprite;
wait_spr = default_sprite;
taunt_spr = default_sprite;

// Constants
max_stamina = 100;
stamina_recovery_per_frame = 1;
stamina_lost_while_walking = 0.1;
stamina_lost_while_running = 0.5;
stamina_lost_while_aerial = 0.25;
stamina_lost_per_jump = 10;
stamina_lost_per_attack = 10;
stamina_lost_per_dodge = 15;
stamina_sound_threshold = max_stamina / 5;

stamina = max_stamina;
previous_owner_state = PS_IDLE;
previous_owner_state_timer = -1;
stunned = false;

pet_w = 12;
run_speed = 10;
max_run_dist = 200;