extends Area2D

func shoot():
	const BULLET = preload("res://bullet.tscn")
	var newBullet = BULLET.instantiate()
	newBullet.global_position = %ShootingPoint.global_position
	newBullet.global_rotation = %ShootingPoint.global_rotation
	%ShootingPoint.add_child(newBullet)


func _on_timer_timeout() -> void:
	shoot()
