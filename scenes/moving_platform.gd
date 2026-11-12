extends Path2D

@export var loop : bool = true
@export var move_speed : float = 20.0
@export var speed_ratio : float = 1.0

@onready var pathfollow: PathFollow2D = $pathfollow
@onready var anim: AnimationPlayer = $anim


func _read() -> void:
	if not loop:
		anim.play("move")
		anim.speed_scale = speed_ratio
		
func _process(delta: float) -> void:
	pathfollow.progress += move_speed * delta
