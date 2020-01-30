extends Node2D


func _process(delta):
	if Input.is_key_pressed(KEY_ESCAPE):
	  get_tree().quit()
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_FxStart_finished():
	#global.dinos_fixed.clear()
	get_tree().change_scene("res://scenes/LevelSelector.tscn")



func _on_Start_pressed():
	get_node("Musiquita").stop()
	get_node("FX-Start").play()


func _on_Settings_pressed():
	get_node("FX-Click").play()
	var settings = load("res://scenes/PopupSettings.tscn")
	get_node("popups").call_deferred("add_child", settings.instance())


func _on_Close_pressed():
	get_tree().quit()
