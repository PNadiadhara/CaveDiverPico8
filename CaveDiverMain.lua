function _init()
	game_over=false
	make_player()
end

function _update()
	move_player()
end

function _draw()
	cls()
	draw_player()
end

