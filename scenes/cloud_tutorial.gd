extends Node2D

@export var speed: float = 15.0
@export var cloud_width: float = 400.0

@onready var cloud1: Sprite2D = $sprite_cloud1
@onready var cloud2: Sprite2D = $sprite_cloud2

func _process(delta: float) -> void:
	cloud1.position.x -= speed * delta
	cloud2.position.x -= speed * delta
	
	if cloud1.position.x <= -cloud_width:
		cloud1.position.x = cloud2.position.x + cloud_width
		
	if cloud2.position.x <= -cloud_width:
		cloud2.position.x = cloud1.position.x + cloud_width
