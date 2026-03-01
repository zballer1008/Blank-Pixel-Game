x_speed = 0
y_speed += grav

show_debug_message("Carpet")
if(keyboard_check(vk_right))
{
	x_speed = movement_speed
	image_xscale = -1

}
else if(keyboard_check(vk_left))
{
	x_speed = -movement_speed
	image_xscale = 1
}

if(place_meeting(x,y+1, oSolid))
{
	if(keyboard_check(vk_up))
	{
		y_speed = -7
	}
	else
	{
		y_speed = 0
	}
}


if (y > room_height or x > room_width or x < 0)
{
	room_restart()
}
	

move_and_collide(x_speed, y_speed, oSolid)