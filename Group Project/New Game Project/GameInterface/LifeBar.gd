extends HBoxContainer

var maximum_value = 100
var current_health = 0

func initialize(maximum):
	maximum_value = maximum
	$TextureProgress.max_value = maximum
	

func _on_Interface_health_changed(health):
	animate_value(current_health)
	current_health = health
	$TextureProgress.value = health
	#$Count/Number.text = "%s / %s" % [health, maximum_value]

func animate_value(start, end):
	# $Tween.interpolate_property($TextureProgress, "value", start, end, 0.3, Tween.TRANS_ELASTIC, Tween.EASE_OUT)
	# $Tween.start()
	
	