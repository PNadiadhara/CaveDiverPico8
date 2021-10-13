function _init()
	game_over=false
	make_cave()
	make_player()
end

function _update()
	if (not game_over) then	
		update_cave()
		move_player()
		check_hit()
	end	
end

function _draw()
	cls()
	draw_cave()
	draw_player()
end

