function make_player()
	--in lua this table acts
		-- similar to object
	player={}
	player.x=24 --xy plyr position
	player.y=60
	
	player.dy=0 --fall speed

	player.rise=1 --sprites
	player.fall=2
	player.dead=3
	
	player.speed=2 --fly speed 
	player.score=0
end

function draw_player()
	if (game_over) then
	--ref spr in doc for more info
		spr(player.dead,player.x,player.y)
	elseif (player.dy<0) then
		spr(player.rise,player.x,player.y)
	else 
		spr(player.fall,player.x,player.y)		
	end
end

function move_player()
	gravity=0.2
	player.dy+=gravity
	
	--jump
	if(btn(2)) then
		player.dy-=5
		sfx(0)
		end
	
	--move to new pos
	player.y+=player.dy
	
	player.score+=player.speed
end

function check_hit()
	for i=player.x,player.x+7 do
		if (cave[i+1].top>player.y
			or cave[i+1].btm<player.y+7) then
			game_over=true
			sfx(1)
		end
	end
end