extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var drag = false
var oldMousePos = Vector2()
var topLeftCorner = Vector2(24,24)
var bottomRightCorner = Vector2(1280-24,720-24)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	if drag:
		$GrabbyPart.global_position = oldMousePos
		oldMousePos = get_global_mouse_position()
		oldMousePos.x = clamp(oldMousePos.x,topLeftCorner.x,bottomRightCorner.x)
		oldMousePos.y = clamp(oldMousePos.y,topLeftCorner.y,bottomRightCorner.y)
		$Label.text = str(oldMousePos.x)+" "+str(oldMousePos.y)
	else:
		$GrabbyPart.global_position = $Body.global_position

func _input(event):
	if event.is_class("InputEventMouseButton") and !event.is_pressed():
		print("relaese")
		drag = false



func _on_GrabbyPart_input_event(viewport, event, shape_idx):
	if event.is_class("InputEventMouseButton") and event.is_pressed():
		oldMousePos = get_global_mouse_position()
		drag = true
	pass # Replace with function body.