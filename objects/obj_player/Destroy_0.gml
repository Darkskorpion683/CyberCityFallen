if hp <= 0 {
	instance_destroy()
	global.game_over = true
}