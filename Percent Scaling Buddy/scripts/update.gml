var current_percent = get_player_damage(owner.player);
current_percent = clamp(current_percent, 0, max_percent_for_scaling);
image_alpha = current_percent / max_percent_for_scaling;
x = owner.x;
y = owner.y - 20;

var percent_ratio = current_percent / 100;
var multiplier = percent_ratio * percent_scale;

if (owner.hitstun > owner_previous_hitstun)
{
    var hitstun_increase = round(owner.hitstun * multiplier);
    owner.hitstun += hitstun_increase;
}

owner_previous_sc = owner.state_cat;
owner_previous_hitstun = owner.hitstun;