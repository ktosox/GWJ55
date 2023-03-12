extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var phase = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Timer_timeout():
	if $Green2.visible == true:
		$Green2.visible = false
	phase += 1
	if phase < 3:
		$Line2D.global_position = Vector2(rand_range(50,500),-40)
		$Line2D.rotation_degrees = 90 + rand_range(-20,20)
		$Line2D/AnimationPlayer.play("New Anim")
		$Line2D2.global_position = Vector2(rand_range(750,1200),-40)
		$Line2D2.rotation_degrees = 90 + rand_range(-20,20)
		$Line2D2/AnimationPlayer.play("New Anim")
	else:
		phase = 0
		$Green2.visible = true
		$Green2.global_position = Vector2(rand_range(200,800),rand_range(80,300) )
	pass # Replace with function body.
