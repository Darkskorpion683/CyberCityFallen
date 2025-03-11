time_elapsed += 1

if (time_elapsed > room_speed * 60 * 10) {
	audio_stop_all()
	room_goto(win_screen)
	audio_play_sound(snd_win, 99, false)
}