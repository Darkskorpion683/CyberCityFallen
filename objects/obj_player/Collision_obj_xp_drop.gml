if (upgrade_call_count == 0) {
    XP -= 10;
} else if (upgrade_call_count == 1) {
    XP -= 9;
} else if (upgrade_call_count == 2) {
    XP -= 8;
} else if (upgrade_call_count == 3) {
    XP -= 7;
} else if (upgrade_call_count == 4) {
    XP -= 6;
} else if (upgrade_call_count == 5) {
    XP -= 5;
} else if (upgrade_call_count == 6) {
    XP -= 4;
} else if (upgrade_call_count == 7) {
    XP -= 3;
} else if (upgrade_call_count == 8) {
    XP -= 2;
} else if (upgrade_call_count >= 9) {
    XP -= 1;
}

audio_play_sound(snd_xp_pickup, 99, false);
instance_destroy(other);
