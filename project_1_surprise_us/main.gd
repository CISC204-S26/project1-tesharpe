extends Node2D

@onready var flash = $CanvasLayer/ColorRect
@onready var scare = $CanvasLayer/TextureRect
@onready var text = $CanvasLayer/Label
func trigger_scare():
	$CanvasLayer/TextureRect.visible = true
	$CanvasLayer/Label.visible = true
	$AudioStreamPlayer.play()
