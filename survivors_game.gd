extends Node2D

func spawnMob():
	var newMob = preload("res://mob.tscn").instantiate()
	%PathFollow2D.progress_ratio = randf()
	newMob.global_position = %PathFollow2D.global_position
	add_child(newMob)


func _on_timer_timeout() -> void:
	spawnMob()


func _on_player_health_depleted() -> void:
	%GameOver.visible = true
	get_tree().paused = true
