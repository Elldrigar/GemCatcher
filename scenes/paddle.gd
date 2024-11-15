extends Area2D

@export var speed: float = 600.0

func _ready() -> void:
	pass 

func _process(delta: float) -> void:
	#if Input.is_action_pressed("left"):
		#position.x = position.x - speed * delta
		#
	#elif Input.is_action_pressed("right"):
		#position.x = position.x + speed * delta
	var input_amount: float = Input.get_axis("left", "right")
	position.x += delta * speed * input_amount
