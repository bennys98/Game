extends Control

signal health_changed(health)
signal oxygen_changed(oxygen)

func _ready():
	# var health_node = null
	# get nodes from the character 
	# for node in get_tree().get_nodes_in_group("actors"):
	# if node.name == "Player":
		# health_node = node.get_node("Health")
		# break
	# $Bar/LifeBar.initialize(health_node.max_health)


func _on_Health_health_changed(health):
	emit_signal("health_changed", health)

func _on_Oxygen_oxygen_changed(oxygen):
	emit_signal("oxygen_changed", oxygen)

