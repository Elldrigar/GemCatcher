extends Area2D

@export var speed: float = 600.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#if Input.is_action_pressed("left"):
		#position.x = position.x - speed * delta
		#
	#elif Input.is_action_pressed("right"):
		#position.x = position.x + speed * delta
	var input_amount: float = Input.get_axis("left", "right")
	position.x += delta * speed * input_amount


func _on_gem_area_entered(area: Area2D) -> void:
	print(area) # Replace with function body.
