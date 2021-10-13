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
	else 
		if (btn(5)) _init() --restart
	end	
end

function _draw()
	cls()
	draw_cave()
	draw_player()
	
	if (game_over) then 
		print("game over",44,44,7)
		print("score:"..player.score,44,54,7)
		print("press ❎ to play again",18,72,6)
	else 
		print("score:"..player.score,2,2,7)
	end	
end

