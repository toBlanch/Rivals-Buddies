var iterator = self;
with (oPlayer) if "url" in self && !clone && ("fs_iterator_id" not in self || fs_iterator_id == iterator) && "owner" in other && id == other.owner { // we now magically have access to player variables and functions!
	if player > 0 && player < 5{
		if "fs_char_initialized" not in self || (fs_char_initialized == false) {
            // Maybe required
			fs_player_count = 0;
			fs_slot[1] = -1;
			fs_slot[2] = -1;
			fs_slot[3] = -1;
			fs_slot[4] = -1;
			with oPlayer if "url" in self && !clone {
				other.fs_slot[player] = other.fs_player_count;
				other.fs_player_count ++;
			}

            // Required values from FS buddy
			var slot = fs_slot[player];
			var offset = fs_player_count-1;
			var vieww = view_get_wview()/8;
			hud_x = view_get_wview()/2 + vieww * (offset - slot*2);
			hud_y = view_get_hview()*0.9;

            
            max_stamina = 100;
            stamina_recovery_per_frame = 1;
            stamina_recovery_per_frame_while_walking = 0.5;
            stamina_lost_while_running = 0.25;
            stamina_lost_while_aerial = 0.25;
            stamina_lost_per_jump = 10;
            stamina_lost_per_attack = 10;
            stamina_lost_per_dodge = 15;
            stamina_sound_threshold = max_stamina / 5;

            stamina = max_stamina;
            stun_duration = 5;
            stunned = false;

            low_stamina_sound = sound_get("Pokemon Emerald Low HP");
            out_of_stamina_sound = sound_get("Ultrakill No Stamina");	

            fs_char_initialized = true;
		}

        if (state == PS_DEAD)
        {
            stamina = max_stamina;
        }
        else if (state == PS_IDLE || state == PS_CROUCH)
        {
            stamina += stamina_recovery_per_frame;
        }
        else if (state == PS_WALK || state == PS_WALK_TURN)
        {
            stamina += stamina_recovery_per_frame_while_walking;
        }
        else if (state == PS_DASH_START || state == PS_DASH || state == PS_DASH_TURN || state == PS_DASH_STOP)
        {
            stamina -= stamina_lost_while_running;
            stamina = clamp(stamina, 0, max_stamina);
        }
        else if (state == PS_IDLE_AIR && owner.hsp != 0)
        {
            stamina -= stamina_lost_while_aerial;
            stamina = clamp(stamina, 0, max_stamina);
        }
        else
        {
            var new_state_started = state_timer == 0;
            if(new_state_started)
            {
                if(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
                {
                    stamina -= stamina_lost_per_attack;
                }
                else if (state == PS_PARRY || state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD || state == PS_TECH_GROUND || state == PS_TECH_FORWARD || state == PS_TECH_BACKWARD || state == PS_WALL_TECH || state == PS_AIR_DODGE)
                {
                    stamina -= stamina_lost_per_dodge;
                }
                else if(state == PS_FIRST_JUMP || state == PS_SECOND_JUMP || state == PS_WALL_JUMP)
                {
                    stamina -= stamina_lost_per_jump;
                    stamina = clamp(stamina, 0, max_stamina);
                }

                if (stamina_sound_threshold > stamina && stamina >= 0)
                {
                    sound_play(low_stamina_sound);
                }
            }
        }

        if (stamina < 0)
        {
            sound_play(out_of_stamina_sound);
            stamina = 0;
            state = PS_PRATFALL;
            stunned = true;
        }
        else if (stamina > max_stamina)
        {
            stamina = max_stamina;
        }
	}
}