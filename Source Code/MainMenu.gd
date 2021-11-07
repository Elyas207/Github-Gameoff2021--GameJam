extends Control



var screen_size : Vector2 = Vector2()

func _ready():
	screen_size = OS.get_screen_size()# Gets the screen size to test in futur if its change since their

func _process(delta) -> void:
	if OS.get_screen_size() != screen_size: #Tests if your screen changed in size, e.g a different monitor
		screen_size = OS.get_screen_size()
		OS.set_window_size(screen_size)# Sets your window to your screen size
		
		
	
		
		
		
