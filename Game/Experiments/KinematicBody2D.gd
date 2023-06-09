extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var drag = false
var oldMousePos = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	if drag:
		global_position -= oldMousePos - get_global_mouse_position()
		oldMousePos = get_global_mouse_position()


func _on_KinematicBody2D_input_event(viewport, event:InputEvent, shape_idx):
	if event.is_class("InputEventMouseButton") and event.is_pressed():
		oldMousePos = get_global_mouse_position()
		drag = true
	if event.is_class("InputEventMouseButton") and !event.is_pressed():
		drag = false
	pass # Replace with function body.
