extends Line2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func attack(target:Node2D):
	global_position = target.global_position
	global_rotation = randf()*PI
	$AnimationPlayer.play("New Anim")
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
