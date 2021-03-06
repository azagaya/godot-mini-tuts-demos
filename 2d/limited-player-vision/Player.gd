extends KinematicBody2D

export var speed := 300.0

var direction := Vector2.ZERO

var _velocity := Vector2.ZERO

func _physics_process(delta) -> void:
  update_direction()
  _velocity = direction.normalized() * speed
  _velocity = move_and_slide(_velocity)


func update_direction() -> void:
	direction.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	direction.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
