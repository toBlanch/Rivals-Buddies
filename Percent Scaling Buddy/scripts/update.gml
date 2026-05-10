x = owner.x;
y = owner.y - 20;
var current_percent = get_player_damage(owner.player);
current_percent = clamp(current_percent, 0, max_percent_for_scaling);

if (current_percent != previous_current_percent)
{
    image_alpha = current_percent / max_percent_for_scaling;

    var multiplier = 1 + current_percent * percent_scale;
    owner.hitstun = round(owner.hitstun * multiplier);
}

previous_current_percent = current_percent;