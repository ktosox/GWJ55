extends Path2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func fire(start:Vector2,end:Vector2):
	var newCurve = Curve2D.new()
	newCurve.add_point(start)
	newCurve.add_point(end)
	curve = newCurve
	$AnimationPlayer.play("New Anim")
	pass
