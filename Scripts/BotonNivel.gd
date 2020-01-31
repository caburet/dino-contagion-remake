extends Node2D


export (int) var level
export (bool) var enabled

onready var level_label= $TextureButton/Label

# Called when the node enters the scene tree for the first time.
func _ready():
	level_label.text= String(level)
	if (global.max_level>= level):
		$TextureButton/Sprite.hide()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_TextureButton_pressed():
	$ButtonPressed.play()
	global.level_selected = level
	get_tree().change_scene("res://scenes/game.tscn")
	pass # Replace with function body.	
	pass # Replace with function body.
