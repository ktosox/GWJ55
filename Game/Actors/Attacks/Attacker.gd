extends Node2D
class_name Attacker

var targets = []

var currentTarget

var attacking = false

onready var attackBox = $AttackBox.get_children()

func _ready():
	targets = get_tree().get_nodes_in_group("Mote")
	currentTarget = targets[0]
	pass
	
func attack_cycle(count = 4, delay = 0.8):
	attacking = true
	while count>0:
		count -= 1
		next_target()
		next_attacker().attack(currentTarget)
		yield(get_tree().create_timer(delay),"timeout")
	attacking = false
	pass

func next_attacker():
	var next = attackBox.pop_front()
	attackBox.push_back(next)
	return next
	
func next_target():
	var possibleTargets = targets.duplicate()
	possibleTargets.erase(currentTarget)
	currentTarget = possibleTargets[randi()%possibleTargets.size()]
	pass
