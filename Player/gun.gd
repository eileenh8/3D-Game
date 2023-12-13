extends Node3D


func shoot():
	$Flash.show()
	$Time.start()
	
	
func _on_timer_timeout():
	$Flash.hide()
