extends Node2D

@onready var flash = $CanvasLayer/ColorRect
@onready var scare = $CanvasLayer/TextureRect
@onready var text = $CanvasLayer/Label

func _ready():
	$Hallway/Door.connect("jump_scare", trigger_scare)

func trigger_scare():
	flash.visible = true
	scare.visible = true
	text.visible = true
	text.text = "RUN."
	$AudioStreamPlayer.play()
