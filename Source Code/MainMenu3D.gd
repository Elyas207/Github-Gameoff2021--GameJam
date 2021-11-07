extends Spatial


var millisec = 0
var sec = 0


var flickerlightsmillisec = 0 
var flickerlightsec = 0 
func _ready():
	pass # Replace with function body.
	
	
	
func _process(delta):
	millisec += 1
	if millisec == 60:
		sec += 1
		millisec = 0 
		
	if sec == 6:
		flicker_lights()
		sec = 0 
		millisec = 0
		
		
		
		
		
		
		
func flicker_lights():
	$RoomLightUpEffect.visible = false
	$LightBulbLightEffect.visible = false
	$Timer.start(0)
	
	
	
	
	
	



func _on_Timer_timeout():
	$RoomLightUpEffect.visible = true
	$LightBulbLightEffect.visible = true
	$Timer.stop() 
	
