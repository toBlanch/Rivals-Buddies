var current_percent = get_player_damage(owner.player);
current_percent = clamp(current_percent, 0, max_percent_for_scaling);
image_alpha = current_percent / max_percent_for_scaling;
x = owner.x;
y = owner.y - 20;

var percent_ratio = current_percent / 100;
var dynamic_multiplier = 1 + (percent_ratio * percent_scale);

if (owner.state_cat == SC_HITSTUN && owner.state_timer > owner_previous_state_timer)
{
    owner.state_timer = round(owner.state_timer * dynamic_multiplier);
}

owner_previous_sc = owner.state_cat;
owner_previous_state_timer = owner.state_timer;