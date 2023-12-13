extends CharacterBody3D


func _ready():
	$AnimationPlayer.play("Idle")

func _on_area_3d_body_entered(body):
	$Dialogue.show()
	$Dialogue/Control/Label.text = "There is no time to talk! Find the cabin and you will be safe, we will talk then, HURRY!"
	$Dialogue/Timer.start()


func _on_timer_timeout():
	$Dialogue.queue_free()
