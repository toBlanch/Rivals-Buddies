if(stunned)
{
    stunned = false;
    if(owner.state == PS_PRATFALL)
    {
        owner.state = PS_IDLE;
    }
}

if (owner.state == PS_DEAD)
{
    stamina = max_stamina;
}
else if (owner.state == PS_IDLE || owner.state == PS_CROUCH)
{
    stamina += stamina_recovery_per_frame;
}
else if (owner.state == PS_DASH_START || owner.state == PS_DASH || owner.state == PS_DASH_TURN || owner.state == PS_DASH_STOP)
{
    stamina -= stamina_lost_while_running;
}
else if (owner.state == PS_IDLE_AIR && owner.hsp != 0)
{
    stamina -= stamina_lost_while_aerial;
}
else
{
    var new_state_started = owner.state_timer < previous_owner_state_timer || owner.state != previous_owner_state;
    if(new_state_started)
    {
        if(owner.state == PS_ATTACK_GROUND || owner.state == PS_ATTACK_AIR)
        {
            stamina -= stamina_lost_per_attack;
        }
        else if (owner.state == PS_PARRY || owner.state == PS_ROLL_FORWARD || owner.state == PS_ROLL_BACKWARD || owner.state == PS_TECH_GROUND || owner.state == PS_TECH_FORWARD || owner.state == PS_TECH_BACKWARD || owner.state == PS_WALL_TECH || owner.state == PS_AIR_DODGE)
        {
            stamina -= stamina_lost_per_dodge;
        }
        else if(owner.state == PS_FIRST_JUMP || owner.state == PS_SECOND_JUMP || owner.state == PS_WALL_JUMP)
        {
            stamina -= stamina_lost_per_jump;
        }

        if (stamina_sound_threshold > stamina && stamina > 0)
        {
            sound_play(sound_get("mfx_change_color"))
        }
    }
}

if (stamina < 0)
{
    sound_play(sound_get("Ultrakill No Stamina"))
    stamina = 0;
    owner.hsp = 0;
    owner.vsp = 0;
    owner.state = PS_PRATFALL;
    stunned = true;
}
else if (stamina > max_stamina)
{
    stamina = max_stamina;
}

x = owner.x;
y = owner.y;
width = stamina / max_stamina * pet_w;

previous_owner_state = owner.state;
previous_owner_state_timer = owner.state_timer;