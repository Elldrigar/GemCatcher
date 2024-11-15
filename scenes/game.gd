extends Node2D

@export var gem_scene: PackedScene
@onready var label: Label = $Label

var _score: int = 0

func _ready() -> void:
	spawn_gem()

func _process(delta: float) -> void:
	pass

func spawn_gem() -> void:
	var new_gem: Gem = gem_scene.instantiate()
	var xpos: float = randf_range(70, 1050)
	new_gem.on_gem_off_screen.connect(game_over)
	new_gem.position = Vector2(xpos, -50)
	add_child(new_gem)

func game_over() -> void:
	print("GAME OVER")

func _on_timer_timeout() -> void:
	spawn_gem()

func _on_paddle_area_entered(area: Area2D) -> void:
	_score += 1
	label.text = "%04d" % _score
	area.queue_free()
