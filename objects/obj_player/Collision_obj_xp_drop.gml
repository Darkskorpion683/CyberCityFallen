// Reduce gained xp to scale with more enemies
if (upgrade_call_count == 0) {
    XP -= 10;
} else if (upgrade_call_count == 1) {
    XP -= 10;
} else if (upgrade_call_count == 2) {
    XP -= 10;
} else if (upgrade_call_count == 3) {
    XP -= 10;
} else if (upgrade_call_count == 4) {
    XP -= 8;
} else if (upgrade_call_count == 5) {
    XP -= 8;
} else if (upgrade_call_count == 6) {
    XP -= 8;
} else if (upgrade_call_count == 7) {
    XP -= 6;
} else if (upgrade_call_count == 8) {
    XP -= 6;
} else if (upgrade_call_count >= 9) {
    XP -= 6;
}

audio_play_sound(snd_xp_pickup, 99, false);
instance_destroy(other);
