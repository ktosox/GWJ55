extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_HitScan_area_entered(area):
	get_parent().modulate = ColorN("Yellow")
	pass # Replace with function body.


func _on_HitScan_area_exited(area):
	if get_overlapping_areas().size()<1:
		get_parent().modulate = ColorN("White")
	pass # Replace with function body.
