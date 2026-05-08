var current_percent = get_player_damage(owner.player);
current_percent = clamp(current_percent, 0, max_percent_for_scaling);
image_alpha = current_percent / max_percent_for_scaling;
x = owner.x;
y = owner.y - 20;

var percent_ratio = current_percent / 100;
var dynamic_multiplier = 1 + (percent_ratio * percent_scale);

var owner_can_move = owner.state == "PS_HITSTUN" || owner.state == "PS_ATTACK_GROUND" || owner.state == "PS_ATTACK_AIR";

if (!owner_can_move && (owner_could_move || owner.state != owner_previous_state))
{
    owner.state_timer = round(owner.state_timer * dynamic_multiplier);
}

owner_could_move = owner_can_move;
owner_previous_state = owner.state;